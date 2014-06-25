#
#   Salt Master element
#


##
## PACKAGES
##

salt-master-pkg:
  pkg.installed:
    - name: salt-master
    - refresh: True


##
## FILES
##

salt-master-config:
  file.managed:
    - name: /etc/salt/master
    - require:
      - pkg: salt-master

custom-master-config:
  file.managed:
    - name: /etc/salt/master.d/custom.conf
    - makedirs: True
    - require:
      - file: /etc/salt/master


##
## SERVICES 
##

salt-master-service:
  service.running:
    - name: salt-master
    - enable: True
    - watch:
      - file: /etc/salt/master
      - file: /etc/salt/master.d/custom.conf
