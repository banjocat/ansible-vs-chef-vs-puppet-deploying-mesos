package 'marathon' do
    action :install
end

file '/etc/mesos-master/quorum' do
    content '1'
    notifies :restart, 'service[mesos-master]'
end

file '/etc/mesos-master/hostname' do
    content node['ipaddres']
    notifies :restart, 'service[mesos-master]'
end

file '/etc/mesos-master/ip' do
    content "0.0.0.0"
    notifies :restart, 'service[mesos-master]'
end

file '/etc/mesos-master/cluster' do
    content ENV['MESOS_CLUSTER'] || 'mesos-cluster'
    notifies :restart, 'service[mesos-master]'
end

service 'mesos-master' do
    action :start
end

service 'marathon' do
    action :start
end

