VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.hostname = "jenkins.vlan"
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  #http://localhost:8080 gets you to the running Jenkins instance
  config.vm.network :forwarded_port, guest: 8080, host: 8080

  # Set a fixed IP
  # config.vm.network :private_network, ip: "192.168.33.107"

  # If true, then any SSH connections made will enable agent forwarding.
  config.ssh.forward_agent = true

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    config.vm.provision :puppet, :module_path => "modules"
    puppet.manifest_file  = "init.pp"
  end

end
