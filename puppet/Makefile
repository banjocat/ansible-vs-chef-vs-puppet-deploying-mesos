# Used to load third party modules for Vagrant
ARGS=--target-dir=./third_party_modules
UP_ARGS=--modulepath=./third_party_modules

all:
	mkdir -p ./third_party_modules
	puppet module install ${ARGS} puppetlabs-apt --version 2.3.0
	puppet module install ${ARGS} puppetlabs-puppet_agent --version 1.3.1
	puppet module install ${ARGS} puppetlabs-puppet_agent --version 1.3.1
	puppet module install ${ARGS} puppetlabs-java --version 1.6.0
	puppet module install ${UP_ARGS} puppetlabs-stdlib --version 4.13.1

clean:
	rm -rf ./third_party_modules
