учше
exit
ssh root@192.168.88.100
usermod -aG wheel mephi-admin
exit
sudo whoami
sed -i 's/^auth required pam_wheel.so use_uid/#auth           required        pam_wheel.so use_uid/' /etc/pam.d/su
exit
ssh-keygen -R 192.168.88.100
exit
sudo bash -c `
history > ~/project_history.txt
ping -c 4 192.168.88.1 > ~/network_check.txt
ping -c 4 8.8.8.8 >> ~/network_check.txt
journalctl -u nginx --since '30 minutes' > ~/nginx_recent_logs.txt
cp /etc/fstab ~/fstab.txt
ls -Zd /data/mephi-web > ~/file_contexts.txt
getcap /usr/sbin/tcpdump > ~/tcpdump_capabilities.txt
stat /data/mephi-web > ~/permissions.txt
id mephi-admin > ~/users_groups.txt
curl -s http://192.168.88.100 > ~/curl_output.txt
cp /data/mephi-web/index.html ~/index.html
history > ~/project_history.txt
ls ~/
history > ~/project_history.txt
ping -c 4 192.168.88.1 > ~/network_check.txt && ping -c 4 8.8.8.8 >> ~/network_check.txt
journalctl -u nginx --since "30 minutes ago" > ~/nginx_recent_logs.txt
cp /etc/fstab ~/fstab.txt && getenforce > ~/selinux_status.txt && ls -Zd /data/mephi-web > ~/file_contexts.txt
getcap /usr/sbin/tcpdump > ~/tcpdump_capabilities.txt && stat /data/mephi-web > ~/permissions.txt
id mephi-admin > ~/users_groups.txt && getent group mephi-devs >> ~/users_groups.txt
curl -s http://192.168.88.100 > ~/curl_output.txt && cp /data/mephi-web/index.html ~/index.html
ls ~/
ls /tmp/tcpdump*.rpm
cd /tmp && dnf download tcpdump
dnf download tcpdump --setopt=fastestmirror=true
ls /tmp/*.rpm
