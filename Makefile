install:
				ansible-playbook playbook.yml -i local

vim:
				ansible-playbook playbook.yml -i local --tags=vim
				ln -s $(PWD)/files/coc-settings.json ~/.config/nvim/coc-settings.json | true

install_ansible:
				sudo apt-get install software-properties-common
				sudo apt-add-repository ppa:ansible/ansible
				sudo apt-get update
				sudo apt-get install ansible

test:
				ansible-lint playbook.yml
				ansible-playbook playbook.yml -i local --check -vv
