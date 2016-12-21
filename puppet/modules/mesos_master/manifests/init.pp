class mesos_master {
    require mesos_common
    package {'zookeeper':
        ensure => present
    }
    ->
    service {'zookeeper':
        ensure => running
    }

    file { '/etc/mesos-master/ip':
        ensure  => present,
        content => "$::ipaddress",
        notify  => Service['mesos-master'],
    }
    ->
    file { '/etc/mesos-master/hostname':
        ensure  => present,
        content => "$::ipaddress",
        notify  => Service['mesos-master'],
    }
    ->
    service { 'mesos-master':
        ensure => running,
    }

    package {'marathon':
        ensure => "1.1.4-1.0.514.ubuntu1404",
    }
    ->
    service {'marathon':
        ensure   => running,
        require => Service['mesos-master'],
    }

}
