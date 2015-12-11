This project houses hardware and software designs which connect to Megasquirt open source Engine Management Units via CAN or RS232 and drive 4DGL Systems OLED displays for use as gauges.

Two implementations are supported:

**_Stand Alone_**

All code is written in a proprietary language called 4DGL (similar to pascal) and resides in the OLED display. The display polls the Megasquirt for data using RS232, reads switches and displays numerical content as a visual gauge.

Displays and programming interface can be purchased here: http://www.4dsystems.com.au/

Code is developed and programmed to the display using a Free IDE available for download from the 4d Systems website.

![http://www.tincannetwork.com/files/StandAlone.png](http://www.tincannetwork.com/files/StandAlone.png)

Examples:

The displays come small enough to embed into your cluster, this can give a discrete OEM looking display function:

http://www.youtube.com/watch?v=ddWHp4uoX50

http://www.youtube.com/watch?v=o4_ar1wnvJ8

**_Supported_**

An additional controller board is used to poll and store data from the Megasquirt. The 4dgl device acts as a slave and displays what it is told by the controller board.

The friendly Arduino development environment is used. The AT90CAN128 ATMEL micro controller is not a traditional Arduino device however is easily made compatible by using an Arduino bootloader. The board can be programmed with any RS232 TTL device. The 4DGL OLED Display programmer can be used to update code in the ATMEL controller board.

For more details see the Wiki page on setting up the Ardunio environment and programming the board.

![http://www.tincannetwork.com/files/Supported.png](http://www.tincannetwork.com/files/Supported.png)

http://www.youtube.com/watch?v=QueBhNCcl3I