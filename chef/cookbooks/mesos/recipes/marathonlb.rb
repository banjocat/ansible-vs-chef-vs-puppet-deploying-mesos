docker_image 'mesosphere/marathon-lb' do
    action :pull
end

marathon_lb_ports = ["9090:9090", "9091:9091"]

# Port ranges that haproxy will handle
(7000..7010).each do |n|
    marathon_lb_ports << "#{n}:#{n}"
end

master_ips = search(:node, 'roles:mesos_master')
.map { |n| n['ipaddress'] }
master_ip_string = master_ips.join(':8080,')

docker_container 'marathonlb' do
    repo 'mesosphere/marathon-lb'
    action :run
    env 'PORTS=9090' 
    port marathon_lb_ports
    command "sse --group external --marathon #{master_ip_string}:8080"
end
