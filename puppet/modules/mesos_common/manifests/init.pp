class mesos_common {
    include apt

    apt::ppa { 'ppa:openjdk-r/ppa': }
    ->
    Class['apt::update']
    ->
    package {['openjdk-8-jdk', 'maven']:
        ensure  => present,
    }

    $packages = [
      'tar',
      'wget',
      'git',
      'build-essential',
      'python-dev',
      'libcurl4-nss-dev',
      'libsasl2-dev',
      'libsasl2-modules',
      'libapr1-dev',
      'libsvn-dev',
      'cgroup-bin',
      'cgroup-lite',
      'libcgroup1'
    ]

    package {$packages: ensure => present}

    file_line { 'etc hosts':
        path => '/etc/hosts',
        line => "$::ipaddress $::hostname"
    }

    apt::source { 'mesossphere':
        location  => 'http://repos.mesosphere.com/ubuntu',
        repos     => 'main',
        include   => {
            'deb' => true
        }
    }
    ->
    package { 'mesos': 
        ensure  => '0.28.2-2.0.27.ubuntu1404',
        require => Class['apt::update']
    }

    apt::key { 'docker':
        id     => '58118E89F3A912897C070ADBF76221572C52609D',
        server => 'hkp://ha.pool.sks-keyservers.net:80',
    }
    ->
    apt::source { 'docker':
        location => 'https://apt.dockerproject.org/repo',
        release  => 'ubuntu-trusty',
        repos    => 'main',
        include  =>  {
            'deb' => true
        }
    }
    ->
    Class['apt::update']
    ->
    package {'docker-engine':
        ensure  => present,
    }
    ->
    service {'docker':
        ensure => 'running',
    }

}

