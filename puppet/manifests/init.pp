
node /^mesos-master.*/ {
    require mesos_master
    require mesos_follower
    require mesos_dns
}

node /^mesos-follower.*/ {
    include mesos_follower
    include mesos_dns
}
