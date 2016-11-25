Vagrant.configure("2") do |config|

    config.vm.box = "ubuntu/trusty64"
    config.vm.hostname = "mesos-master"
    config.vm.define "mesos-master"
    config.vm.network "forwarded_port", guest: 8080, host: 9000
    config.vm.network "forwarded_port", guest: 5050, host: 9001

    config.vm.provider"virtualbox" do |v|
        v.memory = 4096
        v.cpus = 2
    end

    config.vm.provision "ansible" do |ansible|
        ansible.sudo = true
        ansible.playbook = "./playbook.yml"
        ansible.groups = {
            "mesos-master" => ["mesos-master"]
        }
        ansible.tags = ['marathon']
    end

end
