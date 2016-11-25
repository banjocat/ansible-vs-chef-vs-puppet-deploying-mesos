class mesos_follower {

    $data_dir = hiera('data_dir')

    file { $data_dir:
        ensure => 'directory',
    }

}
