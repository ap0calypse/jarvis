jarvis
======

Just Another Really Versatile Information System

jarvis was designed with focus on simplicity and maintainability. There are no fancy graphical gimmicks,
just one central configuration file. Here is a short list of the features jarvis currently has:

* Port Monitoring (TCP/UDP)
* Logfile Monitoring using regular expressions
* Disk Usage Monitoring
* Filesize Monitoring
* Event Triggers for escalation
* ... much more to come (daily)

Agents, as in the list above, can be written and included very easily. Each agent is an own process,
jarvis just forks and execs.

The following perl modules need to be installed:

* perl-proc-processtable
* perl-filesys-df
* perl-file-tail

Installation
============

First of all, thanks for considering jarvis. 

With this bundle comes a bash script called 'install\_database'. Execute it to install
a raw and empty sqlite database which jarvis needs. After that, you either copy the example
config to '/etc/jarvis.conf' or you create it yourself. The example configuration comes with
a lot of predefined agents and should be easy to understand.

After this, you can start jarvis and watch as your sqlite database gets filled with data.

If you want to get reports, I recommend to use the jarvis\_report tool, which comes with the bundle. 

*IMPORTANT*
===========

This is an alpha release. It is NOT finished and ready for productive use yet. Please use with caution.
