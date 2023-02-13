#!/bin/bash


cd /katalog/webinaryansible2023/
mkdir -p roles/cat_site/tasks/
mkdir -p roles/cat_site/templates/
mkdir -p roles/cat_site/defaults/
touch roles/cat_site/*/main.yml
touch roles/cat_site/defaults/main.yml
touch roles/cat_site/tasks/main.yml
touch roles/cat_site/templates/index.html.j2

ansible-playbook playbooks/playbook_rola_cat_site.yml
