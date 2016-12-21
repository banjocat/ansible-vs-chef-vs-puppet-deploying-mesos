
node /^mesos-master.*/ {
    include mesos_master
    include mesos_follower
    include mesos_dns
}

node /^mesos-follower.*/ {
    include mesos_follower
    include mesos_dns
}
