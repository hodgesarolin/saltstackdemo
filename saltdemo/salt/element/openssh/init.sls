#
#   openSSH element
#

##
## PACKAGES
##

openssh-pkg:
  pkg.managed:
    - name: openssh



##
## SERVICES
##

openssh-services:
  service.running:
    - name: sshd
    - enable: True
