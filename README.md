### jarvis


Just Another Really Versatile Information System

    1. ABOUT
    1.1. THE NAME
    2. FEATURES
    2.1. TRIGGERS
    3. INSTALLATION
    4. TODO
    5. LICENSE


### 1. ABOUT

jarvis was designed with focus on simplicity and maintainability. There are no fancy graphical gimmicks,
just one central configuration file. I started to work on jarvis because most of the current monitoring
tools come with millions of features I don't need and because of that, they get rather confusing from
time to time. I don't like confusion. I like fast, straightforward monitoring. That was when I decided
to create a monitoring suite myself.

###### 1.1. THE NAME

You know Iron Man? His very spectacular computer system is called J.A.R.V.I.S. which is an abbreviation 
for 'Just A Rather Very Intelligent System'. This version of jarvis, however, is not that smart and my
interpretation is 'Just Another Really Versatile Information System' which is equivalently vague.

### 2. FEATURES

Jarvis monitors services using various agents. Writing agents is pretty easy (if you know Perl, it's
even easier). Agents don't have to be written in Perl, but I strongly encourage you to use Perl if
you consider writing an agent. Currently there are the following agents:

* TCPConnect
* UDPConnect
* LogSearch
* ProcessCheck
* ProcessMemCheck
* MaxProcessCheck
* FileSizeCheck
* FileExistsCheck
* DiskUsageCheck
* DiskTemperatureCheck
* CPUTemperatureCheck
* ... much more to come (daily)

The following perl modules need to be installed in order to run the agents flawlessly:

* perl-proc-processtable
* perl-filesys-df
* perl-file-tail

Jarvis also relies on several external tools or programs to gather data, please install
them to get the best user experience:

* lm\_sensors (for CPUTemperatureCheck)
* hddtemp (for DiskTemperatureCheck; this needs superuser privileges which is not ideal ... )

---
    To make this work, you need to add this line to your /etc/sudoers file:
    jarvis ALL=(root) NOPASSWD:/usr/sbin/hddtemp
---



###### 2.1. TRIGGERS

Now comes a quite handy feature of jarvis. If you specify triggers in your configuration (look at the
example config to get a clue how to use them) you can launch different scripts after special error cases.
For example (taken from the example config):

agent=[TCPConnect,"tcp\_agent\_1",10,localhost,22]

trigger=['trigger\_2',"tcp\_agent\_1",5,60,/tmp/triggerscript]

The above line is the agent that checks port 22 (ssh) on localhost.
If there are 5 TCPConnect errors in one minute, start a script to restart ssh service.

Pretty easy, huh?

### 3. INSTALLATION

First of all, thanks for considering jarvis. 

With this bundle comes a bash script called 'install\_jarvis'. Execute it to install
everything.

After this, you can switch to the jarvis user ( su - jarvis), start jarvis and watch 
as your sqlite database gets filled with data.

If you want to get reports, I recommend to use the jarvis\_report tool, which comes with the bundle. 

For further information on agents and configuration, consider the Wiki.

### 4. TODO

A LOT!

*IMPORTANT*
===========

This is an alpha release. It is NOT finished and ready for productive use yet. Please use with caution.

### 5. LICENSE

Copyright (c) 2012 Manuel Fill (manuel.fill.42@gmail.com)
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
