SHELL := /bin/bash
VENV=.
NO_COLOR    = \x1b[0m
OK_COLOR    = \x1b[32;01m

bootstrap: 
	@echo -e "${OK_COLOR}>>> Creating virtuelenv...${NO_COLOR}"
	virtualenv --python=python2.7 --no-site-packages $(VENV)

	@echo -e "${OK_COLOR}>>> Installing Ansible...${NO_COLOR}"
	bash -c "source bin/activate && pip install ansible"

	@echo -e "${OK_COLOR}>>> Installing vagrant-hostupdater ...${NO_COLOR}"
	vagrant plugin install vagrant-hostsupdater

	@echo -e "${OK_COLOR}Please activate your VirtualEnv, before you proceed!${NO_COLOR}"
