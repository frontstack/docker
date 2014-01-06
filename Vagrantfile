#
# For more information about the Vagrantfile config see:
# http://docs.vagrantup.com/v2/vagrantfile/
#
# OS autentication: vagrant / vagrant
#

Vagrant.configure("2") do |config|
  
  config.vm.box = "frontstack-docker"
  
  #
  # configure your box image
  #
  # Docker-ready image (future use)
  config.vm.box_url = "http://nitron-vagrant.s3-website-us-east-1.amazonaws.com/vagrant_ubuntu_12.04.3_amd64_virtualbox.box"

  #
  # ports to fordward (customize to your needs)
  #
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.network :forwarded_port, guest: 3443, host: 3443

  config.ssh.forward_agent = true

  #
  # Guest resources and custom configuration
  # do not edit 
  # 
  config.vm.provider :virtualbox do |v|
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--memory", 768]
    v.customize ["modifyvm", :id, "--name", "FrontStack Docker"]
    v.customize ["modifyvm", :id, "--ioapic", "on" ]
    v.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
    v.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/docker", "1"]
  end

  #
  # shared directories between guest and host
  #
  config.vm.synced_folder "./", "/home/vagrant/docker", id: "docker"

  #
  # Docker installation
  # $ wget -q -O - https://gist.github.com/h2non/8268212/raw | sudo bash
  #
  config.vm.provision "shell" do |s|
    s.inline = <<SCRIPT
if [ ! -f ~/.docker.lock ]; then
  wget -qO --no-check-certificate - https://get.docker.io/gpg | apt-key add -
  sudo apt-get -y curl
  curl -s https://get.docker.io/ubuntu/ | bash
  touch ~/.docker.lock
fi
SCRIPT
  end
end
