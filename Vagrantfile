# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
IP_ADDRESS = "192.168.2.50"
WEB_PORT = 8000
BOX_NAME = "opscode-ubuntu-13.04"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	# Ubuntu Raring Ringtail 13.04
	config.vm.box = BOX_NAME
	config.vm.box_url = "https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_ubuntu-13.04_provisionerless.box"

	config.vm.network :forwarded_port, guest: 80, host: WEB_PORT
	config.vm.network "private_network", ip: IP_ADDRESS
	config.ssh.forward_agent = true

	# make sure you have the vagrant-omnibus plugin installed
	config.omnibus.chef_version = :latest

	config.vm.provider :virtualbox do |vb|
		vb.customize ["modifyvm", :id, "--memory", "1024"]
	end

	config.vm.provision :chef_solo do |chef|
		chef.cookbooks_path = ["cookbooks", "site-cookbooks"]
		dna = JSON.parse(File.read("recipes.json"))
		chef.json.merge!(dna)
	end

end