# Puppet and Ansible deploying Mesos
The purpose of this repo is to compare puppet and ansible. I used Mesos as a target. As it has a somewhat complicated deployment path.

### Conclusion (on going)
Ansible is crazy easy to learn. If you have some sort of knowledge of provisioning servers I believe you can master ansible ina  few days. The same can *not* be said about puppet. If I was working in a larger group I would probably choose Ansible because I know the rest of the team will be able to pick it up real fast. But.. if I was the main devops engineer of the project. I would use puppet.

### Why do I prefer Puppet
Puppet is a lot smarter on what needs to run. To gain the same intelligence with Ansible you have to use a lot of tags. As by default Ansible will just run the entire playbook. Puppet also doesn't use some crappy YAML DSL. You end up fighting it at time. The Puppet DSL is a lot more powerful. Of course with great power comes great responsibility. It is much easier to make a mess of Puppet than Ansible. But I have faith in my ability to make things clean.

### To start mesos-dns in marathon
```
{

"cmd": "sudo  /usr/local/mesos-dns/mesos-dns -config='/usr/local/mesos-dns/config.json'",
"cpus": 1.0, 
"mem": 1024,
"id": "mesos-dns",
"instances": 1,
"constraints": [["hostname", "CLUSTER", "2.3.4.5"]]
}
```
