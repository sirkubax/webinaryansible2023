#!/bin/bash

cd /katalog/webinaryansible2023/playbooks/chatgpt_szablony

ansible-playbook playbook_i_szablon_html/szablonuj.yml

ansible-playbook playbook_generowanie_dokumentu/szablonuj.yml

ansible-playbook playbook_konfiguracja_uslug/szablonuj.yml



ansible-playbook szablon_inne_przyklady/przyklady_w_playbook.yml




ansible-playbook playbook_rola_cat_site.yml
