#!/bin/bash

ansible -m setup localhost

ansible -m debug -a 'msg={{ hostvars[inventory_hostname] }}' localhost

ansible -m debug -a 'msg={{ hostvars[inventory_hostname] }}' localhost  -i inventory/dev/mojeinventory.yml

ansible -m debug -a 'msg={{ przyklad_zmiennej_globalnej }}' localhost  -i inventory/dev/mojeinventory.ini  -e przyklad_zmiennej_globalnej='z_lini_komend'
