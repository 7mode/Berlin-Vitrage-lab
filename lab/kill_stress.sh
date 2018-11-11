for server in `openstack server list -f value -c Networks |cut -d "," -f 2 |tr "\n" " "`; do ssh  -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no cirros@$server 'kill -9 `ps -o pid,comm |grep yes | tr -s " " | cut -d" " -f 2 | tr "\n" " "`'; done
rm -rf /tmp/do_it
