class mesos_follower {
    require mesos_common
    $data_dir = hiera('data_dir')

    file { $data_dir:
        ensure => 'directory',
    }
    ->
    service { 'mesos-slave':
        ensure => running
    }

}
