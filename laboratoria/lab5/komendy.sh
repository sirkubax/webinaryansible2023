#!/bin/bash

ansible -m setup localhost

ansible -m debug -a 'msg={{ hostvars[inventory_hostname] }}' localhost

ansible -m debug -a 'msg={{ hostvars[inventory_hostname] }}' localhost  -i inventory/dev/mojeinventory.yml
