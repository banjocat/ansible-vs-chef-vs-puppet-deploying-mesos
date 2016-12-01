# Puppet and Ansible deploying Mesos
The purpose of this repo is to compare puppet and ansible. I used Mesos as a target. As it has a somewhat complicated deployment path. It also is here for me to learn Mesos better as a current client has started to use it.

## Disclaimer
Both ansible and mesos offer community modules/roles for mesos. I would probably take a look at using them for a real project.

For ansible https://github.com/frankhinek/ansible-mesos-cluster.git looks promising (yet like other mesos ansible rles doesn't seem to have much support)

And puppet has https://forge.puppet.com/deric/mesos

### Conclusion (on going)
Ansible is crazy easy to learn. If you have some sort of knowledge of provisioning servers I believe you can master ansible in a few days. The same can *not* be said about puppet. If I was working in a larger group I would probably choose Ansible because I know the rest of the team will be able to pick it up real fast. But.. if I was the main devops engineer of the project. I would use puppet.

### When I would use Ansible
* DevOps team is not stable. The team is new and doesn't have focus yet.
* The DevOps team wants to use Ansible
* Most of the people that will be touching DevOps side are developers with no Puppet knowledge at all.
* The DevOps team is very large. Ansible creates cleaner code that is easier to maintain when in larger groups.

### When I would choose Puppet
* DevOps team is small, possibly one person.
* DevOps team has good code sense. Puppet code becomes much cleaner when following good coding guidelines. Specifically DRY, KISS and notinventedhere. A good puppet code is cleaner than Ansible.
* The DevOps team wants to use Puppet, but I would ask questions why they want to use it. To me, being familiar with Puppet is not alone a good reason to use it. Anyone who knows puppet can pick up Ansible very quickly.

### What about Salt?
As a contractor I will run into Puppet and Ansible a lot more. I'm sure Salt is great but the market share is pretty low. Time is limited. There are other things I am learning over Salt.

# On to Mesos

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
