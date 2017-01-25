
package 'zookeeper' do
    action :install
end

puts search(:node, 'roles:zookeeper')
template '/etc/zookeeper/conf/zoo.cfg' do
    variables({
        :zookeepers => search(:node, 'roles:zookeeper'),
    })
    source 'zoo.cfg.erb'
end

service 'zookeeper' do
    action :start
end



