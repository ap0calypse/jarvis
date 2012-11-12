jarvis
======

Just Another Really Versatile Information System

1.      ABOUT
1.1.    THE NAME
2.      FEATURES
2.1.    TRIGGERS
3.      INSTALLATION
4.      TODO
5.      LICENSE


1. ABOUT
========

jarvis was designed with focus on simplicity and maintainability. There are no fancy graphical gimmicks,
just one central configuration file. I started to work on jarvis because most of the current monitoring
tools come with millions of features I don't need and because of that, they get rather confusing from
time to time. I don't like confusion. I like fast, straightforward monitoring. That was when I decided
to create a monitoring suite myself.

1.1. THE NAME
-------------

You know Iron Man? His very spectacular computer system is called J.A.R.V.I.S. which is an abbreviation 
for 'Just Another Very Intelligent System'. This version of jarvis, however, is not that smart and my
interpretation is 'Jst Another Really Versatile Information System' which is equivalently vague.

2. FEATURES
===========

Jarvis monitors services using various agents. Writing agents is pretty easy (if you know Perl, it's
even easier). Agents don't have to be written in Perl, but I strongly encourage you to use Perl if
you consider writing an agent. Currently there are the following agents:

* TCPConnect
* UDPConnect
* LogSearch
* ProcessCheck
* MaxProcessCheck
* FileSizeCheck
* FileExistsCheck
* DiskUsageCheck
* ... much more to come (daily)

The following perl modules need to be installed in order to run the agents flawlessly:

* perl-proc-processtable
* perl-filesys-df
* perl-file-tail

2.1. TRIGGERS
-------------

Now comes a quite handy feature of jarvis. If you specify triggers in your configuration (look at the
example config to get a clue how to use them) you can launch different scripts after special error cases.
For example (taken from the example config):

agent=[TCPConnect,"tcp\_agent\_1",10,localhost,22]
trigger=['trigger\_2',"tcp\_agent\_1",5,60,/tmp/triggerscript]

The above line is the agent that checks port 22 (ssh) on localhost.
If there are 5 TCPConnect errors in one minute, start a script to restart ssh service.

Pretty easy, huh?

3. INSTALLATION
===============

First of all, thanks for considering jarvis. 

With this bundle comes a bash script called 'install\_jarvis'. Execute it to install
everything.

After this, you can switch to the jarvis user ( su - jarvis), start jarvis and watch 
as your sqlite database gets filled with data.

If you want to get reports, I recommend to use the jarvis\_report tool, which comes with the bundle. 

For further information on agents and configuration, consider the Wiki.

4. TODO
=======

A LOT!

*IMPORTANT*
===========

This is an alpha release. It is NOT finished and ready for productive use yet. Please use with caution.

5. LICENSE
==========

"THE BEER-WARE LICENSE" (Revision 42):
<manuel.fill.42@gmail.com> wrote this file. As long as you retain this notice you
can do whatever you want with this stuff. If we meet some day, and you think
this stuff is worth it, you can buy me a beer in return. -- Manuel Fill
