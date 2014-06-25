saltdemo
========

just a set of simple salt states I use for salt demos.


salt
===========

statefiles live in /srv/salt (by default) on the salt master. These are the files that tell salt what changes to make to the system.



pillar
===========

pillar is Salt's static key/value store. Pillar data is sored in special statefiles that live under /srv/pillar (by default) on the salt master. Pillar data can be used in statefile and config files by leveraging the Jinja2 templating language.
