
package 'zookeeper' do
    action :install
end

service 'zookeeper' do
    action :started
end

