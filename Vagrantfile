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

    #config.vm.provision "ansible" do |ansible|
    #    ansible.sudo = true
    #    ansible.playbook = "./ansible/playbook.yml"
    #    ansible.groups = {
    #        "mesos-master" => ["mesos-master"]
    #    }
    #    #ansible.tags = ['dns']
    #end


    config.vm.synced_folder "./puppet/hiera", "/etc/hiera" 
    config.vm.provision "puppet" do |puppet|
        puppet.manifests_path = "./puppet/manifests"
        puppet.manifest_file = "init.pp"
        puppet.module_path = [ "./puppet/modules", "./puppet/third_party_modules"]
        puppet.hiera_config_path = "./puppet/hiera/vagrant_hiera.yaml"
        puppet.facter = {
            "fqdn" => "mesos-master"
        }
    end
end
