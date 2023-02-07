#!/bin/bash

ansible-galaxy install geerlingguy.apache

ansible-playbook playbooks/apache_rola.yml -v

ps aux
curl -kv 127.0.0.1:80  
