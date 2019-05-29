# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = 'ubuntu/xenial64' #Ubuntu 16.04 LTS

  config.vm.define :master01 do |master01_config|
    master01_config.vm.hostname = 'master01'
    master01_config.vm.network :private_network, ip: '192.168.10.10'
    master01_config.vm.network :forwarded_port, guest: 6379, host: 6379                     
    master01_config.vm.provision :shell, path: "redis01.sh"
    master01_config.vm.provision :shell, path: "createRedisconf.sh"
    master01_config.vm.provision :shell, path: "createredisservices.sh"
    master01_config.vm.provision :shell, path: "redis02.sh"
    master01_config.vm.provision :shell, path: "createsentinelconf.sh"
    master01_config.vm.provision :shell, path: "createsentinelservice.sh"
  end
  config.vm.define :slave01 do |slave01_config|
    slave01_config.vm.hostname = 'slave01'
    slave01_config.vm.network :private_network, ip: '192.168.10.11'
    slave01_config.vm.provision :shell, path: "redis01.sh"
    slave01_config.vm.provision :shell, path: "createredisConfSlave.sh"
    slave01_config.vm.provision :shell, path: "createredisservices.sh"
    slave01_config.vm.provision :shell, path: "redis02.sh"
    slave01_config.vm.provision :shell, path: "createsentinelconf.sh"  
    slave01_config.vm.provision :shell, path: "createsentinelservice.sh"                           
  end
  config.vm.define :slave02 do |slave02_config|
    slave02_config.vm.hostname = 'slave02'
    slave02_config.vm.network :private_network, ip: '192.168.10.12'
    slave02_config.vm.provision :shell, path: "redis01.sh"
    slave02_config.vm.provision :shell, path: "createredisConfSlave.sh"
    slave02_config.vm.provision :shell, path: "createredisservices.sh"
    slave02_config.vm.provision :shell, path: "redis02.sh"
    slave02_config.vm.provision :shell, path: "createsentinelconf.sh" 
    slave02_config.vm.provision :shell, path: "createsentinelservice.sh"        
  end
  config.vm.define :slave03 do |slave03_config|
    slave03_config.vm.hostname = 'slave03'
    slave03_config.vm.network :private_network, ip: '192.168.10.13'
    slave03_config.vm.provision :shell, path: "redis01.sh"
    slave03_config.vm.provision :shell, path: "createredisConfSlave.sh"
    slave03_config.vm.provision :shell, path: "createredisservices.sh"
    slave03_config.vm.provision :shell, path: "redis02.sh"
    slave03_config.vm.provision :shell, path: "createsentinelconf.sh"    
    slave03_config.vm.provision :shell, path: "createsentinelservice.sh"        
  end  
  config.vm.define :haproxy01 do |haproxy01_config|
    haproxy01_config.vm.hostname = 'haproxy01'
    haproxy01_config.vm.network :private_network,
                         ip: '192.168.10.14'
    # config.vm.provision :shell, path: "redis.sh"
    # slave03_config.vm.network :forwarded_port, guest: 6382, host: 6382
  end  
  config.vm.define :haproxy02 do |haproxy02_config|
    haproxy02_config.vm.hostname = 'haproxy02'
    haproxy02_config.vm.network :private_network,
                         ip: '192.168.10.15'
    # config.vm.provision :shell, path: "redis.sh"
    # slave03_config.vm.network :forwarded_port, guest: 6382, host: 6382
  
  end    

end
