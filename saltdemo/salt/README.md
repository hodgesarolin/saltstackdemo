/srv/salt
====
*this is the directory of the salt statefile (aka sls files). This files can be organized in almost any kind of filesystem layout but this is my favorites.*

top.sls (salt construct)
===
top.sls in /srv/salt -- this file tells salt what systems gets what configuration when running a highstate (by default)

role (non-salt construct)
===
this is where we define configuration for roles. Role are statefiles that might contain might include elements along with other specific information for configuring a class of systems to perform a specifc task -- (web-server would be a good name for a role, apache-server would be a bad name for a role)

element (non-salt construct)
===
elements are small generic statefiles that will hold the most common tasks -- ( you might have a dhcp element, or a dns element, or an apache server element. These might install needed package, put generic config files in place and start services. The point of an element is to either be included or potentially be included in a role, where we will expand on the detail to provide a specifc configuration of the )
