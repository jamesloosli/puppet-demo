Vagrant.configure("2") do |config|
  ## Choose your base box
  config.vm.box = "centos/7"

  ## Networking
 
  ## Define some hosts
  config.vm.define "master" do |master|
    
    ## Network
    master.vm.hostname = "puppet"
    master.vm.network "private_network", virtualbox__intnet: true, ip: "192.168.50.10"

    ## Puppetmaster Host
    master.vm.provision :hosts do |hosts|
      hosts.add_host '192.168.50.10', ['puppet']
    end

    ## Puppet Provision
    master.vm.provision :shell do |shell|
      shell.path = "bin/deploy-master.sh"
    end

    ### AWS Key
    #master.vm.provision :file do |file|
    #  file.source = "~/.aws/credentials"
    #  file.destination = "/tmp/credentials"
    #end

  end

#  config.vm.define "thing1" do |thing1|
#
#    ## Network
#    thing1.vm.hostname = "thing1"
#    thing1.vm.network "private_network", virtualbox__intnet: true, ip: "192.168.50.11"
#
#    ## Puppetmaster Host
#    thing1.vm.provision :hosts do |hosts|
#      hosts.add_host '192.168.50.10', ['puppet']
#    end
#
#  end
#
#  config.vm.define "thing2" do |thing2|
#
#    ## Network
#    thing2.vm.hostname = "thing2"
#    thing2.vm.network "private_network", virtualbox__intnet: true, ip: "192.168.50.12"
#
#    ## Puppetmaster Host
#    thing2.vm.provision :hosts do |hosts|
#      hosts.add_host '192.168.50.10', ['puppet']
#    end
#
#  end
#
end
