for server in `openstack server list -f value -c Networks |cut -d "," -f 2 |tr "\n" " "`;do ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no cirros@$server "yes > /dev/null &"; done
touch /tmp/do_it
