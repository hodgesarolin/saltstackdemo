#
#   motd element
#

# place our custom, yet simple motd file in place
motd-file:
  file.managed:
    - name: /etc/motd
    - source: salt://element/motd/files/etc/motd
