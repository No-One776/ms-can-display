$mode=0;
$cnt=0;
$out='';
$outf="uconf.dat";
$ConParse='';
$read=1;
@conf = qw( MPH );
@Wanted= qw(mat coolant seconds rpm ready crank startw warmup afrgt1 map 
            tps batteryVoltage vss1 gear);
open(OUT, ">$outf");
while (<>) {
  if ((!$mode) && (/\[OutputChannels\]/)) {
     #print "Begin serial output config section\n";
     $mode=1;
  } elsif ($mode) {
		if (/^\[/) {
      #print "\nEnd of serial output config section\n";
		  $mode=0;
			break;
		} elsif ((/^\#if\s+(.*)/) || (/^\#elif\s+(.*)/)) {
			my $cs = $1;
		  $read = 0;
			foreach $c (@conf) {
				if ($c eq $cs) {
			     #print "Found $c section\n";
			     $ConParse=$c;
			     $read=1;
				}
			}
		} elsif ((/^\#else/) && ($ConParse ne '')) {
			$read=0;
		} elsif ((/^\#else/) && ($ConParse eq '')) {
			#print "Using else section\n";
			$read=1;
		} elsif (/^\#endif/) {
			#print "End of $ConParse section\n";
			$ConParse='';
			$read=1;
			#            seconds  =  scalar,       U16,          0,           "s",  1.000, 0.0
			#} elsif (/\s+(\w+)\s+=\s+(\w+)\s?,\s+(\w\d+)\s?,\s+(\d+)\s?,\s+\"(.+)\"\s?,\s+/) {
		} elsif ((/\s+(.*)\s+=\s+(.*)/) && ($read)) {
			my $n = $1;
			my $rest = $2;
			$rest =~ s/\s+//g;
			$rest =~ s/\"//g;
			my @tarr = split(',', $rest);
			$n =~ s/\s+//g;
			foreach $w (@Wanted) {
				if ($n eq $w) {
     			if ($tarr[0] eq "scalar") {
	    			print "$n: $tarr[1] offs:$tarr[2], unit:$tarr[3], scale:$tarr[4], trans:$tarr[5]\n";
            $out .= "1\n$n\n$tarr[1]\n$tarr[2]\n$tarr[3]\n$tarr[4]\n$tarr[5]\n";
    				$cnt++;
	    		} elsif ($tarr[0] eq "bits") {
     				$tarr[3] =~ /\[(\d):\d\]/;
		     		$out .= "0\n$n\n$tarr[2]\n$1\n";
     				print "bit $n, offs $tarr[2], loc:$1\n";
     				$cnt++;
     			}
			  }
			}
		}
	}
}
print OUT "$cnt\n";
print OUT "$out";
print "Done, $cnt variables written to $outf\n";
