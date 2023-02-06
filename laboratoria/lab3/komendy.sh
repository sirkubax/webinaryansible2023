#!/bin/bash

ansible -m ping localhost

ansible -m shell -a 'echo "to jest echo"; whoami; ls -lah .' localhost

ansible -m file -a 'path=/tmp/katalog_z_modulu state=directory' localhost 

ansible -m copy -a "src=/etc/hosts dest=/tmp/hosts" localhost

ansible -m command -a "ls -l /var/log" localhost

ansible -m service -a 'name=apache2 state=restarted' localhost
