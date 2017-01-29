file '/etc/mesos-slave/containerizers' do
    content 'docker,mesos'
    notifies :restart, 'service[mesos-slave]'
end

file '/etc/mesos-slave/isolation' do
    content 'cgroups/cpu,cgroups/mem'
    notifies :restart, 'service[mesos-slave]'
end

file '/etc/mesos-slave/hostname' do
    content node['ipaddress']
    notifies :restart, 'service[mesos-slave]'
end

file '/etc/mesos-slave/ip' do
    content node['ipaddress']
    notifies :restart, 'service[mesos-slave]'
end

service 'mesos-slave' do
    action :start
end

