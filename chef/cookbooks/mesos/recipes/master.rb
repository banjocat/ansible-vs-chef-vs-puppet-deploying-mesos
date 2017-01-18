# TODO finish this
#

package 'marathon' do
    action :install
end

file '/etc/mesos-master/quorum' do
    content '1'
    notifies :restart, 'service[mesos-master]'
end

service 'mesos-master' do
    action :start
end

service 'marathon' do
    action :start
end

