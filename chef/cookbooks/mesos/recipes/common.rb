apt_repository 'java' do
    uri 'ppa:openjdk-r/ppa'
    action :add
end

package 'openjdk-8-jdk' do
    action :install
end

$common_packages = [
      "tar",
      "wget",
      "git",
      "build-essential",
      "python-dev",
      "libcurl4-nss-dev",
      "libsasl2-dev",
      "libsasl2-modules",
      "maven",
      "libapr1-dev",
      "libsvn-dev",
      "cgroup-bin",
      "cgroup-lite",
      "libcgroup1",
]


$common_packages.each do |p|
    package p do
        action :install
    end
end

apt_repository 'mesos' do
    uri 'http://repos.mesosphere.com/ubuntu'
    keyserver 'keyserver.ubuntu.com'
    key 'E56151BF'
    action :add
    components ['main']
end

package 'mesos' do
    action :install
end

apt_repository 'docker' do
    uri 'https://apt.dockerproject.org/repo'
    keyserver 'hkp://ha.pool.sks-keyservers.net:80'
    key '58118E89F3A912897C070ADBF76221572C52609D'
    distribution 'ubuntu-trusty'
    components ['main']
end

package 'docker-engine' do
    action :install
end

service 'docker' do
    action :start
end

file '/etc/mesos/zk' do
    zk_array = search(:node, 'roles:zookeeper').map { |n| n['ipaddress'] }
    zk_hosts = zk_array.join(':2181,')
    content "zk://#{zk_hosts}:2181/mesos"
end
