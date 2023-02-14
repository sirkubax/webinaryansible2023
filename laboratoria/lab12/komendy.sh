#!/bin/bash

cd /katalog/webinaryansible2023/
echo 'my_vault_password' > .vault_pass
echo '.vault_pass' >> .gitignore

echo "to jest moj sekret, zapiszemy go do pliku" > moj_sekret.txt
cat moj_sekret.txt 

ansible-vault encrypt moj_sekret.txt
ansible-vault encrypt moj_sekret.txt --ask-vault-pass
cat moj_sekret.txt 

ansible-vault decrypt moj_sekret.txt --ask-vault-pass
cat moj_sekret.txt 

export ANSIBLE_VAULT_PASSWORD_FILE=./.vault_pass
ansible-vault encrypt moj_sekret.txt 
cat moj_sekret.txt 

cat ansible.cfg 
echo "vault_password_file = ./.vault_pass" >> ansible.cfg 
cat ansible.cfg 

ansible-vault view moj_sekret.txt 

cat moj_sekret.txt 

ansible-playbook playbooks/sekrety_ansible_vault.yml

