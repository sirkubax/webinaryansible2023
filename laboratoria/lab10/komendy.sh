#!/bin/bash


cd /katalog/webinaryansible2023/playbooks/chatgpt_szablony
mkdir -p roles/cat_site/tasks/
mkdir -p roles/cat_site/templates/
mkdir -p roles/cat_site/defaults/
touch roles/cat_site/*/main.yml
touch roles/cat_site/defaults/main.yml
touch roles/cat_site/tasks/main.yml
touch roles/cat_site/templates/index.html.j2

cd /katalog/webinaryansible2023/playbooks/chatgpt_szablony
ansible-playbook playbooks/playbook_rola_cat_site.yml


cd /katalog/webinaryansible2023/
ansible-playbook playbooks/rola_katalog.yml -vv
