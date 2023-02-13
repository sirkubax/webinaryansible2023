#!/bin/bash

ansible-playbook playbooks/instaluj_i_uruchom_flask.yml

curl -kv 127.0.0.1:8080
