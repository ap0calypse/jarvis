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