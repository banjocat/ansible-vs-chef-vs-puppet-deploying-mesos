# Puppet and Ansible deploying Mesos
The purpose of this repo is to compare puppet and ansible. I used Mesos as a target. As it has a somewhat complicated deployment path. It also is here for me to learn Mesos better as a current client has started to use it.

## Disclaimer
Both ansible and mesos offer community modules/roles for mesos. I would probably take a look at using them for a real project.

For ansible https://github.com/frankhinek/ansible-mesos-cluster.git looks promising (yet like other mesos ansible rles doesn't seem to have much support)

And puppet has https://forge.puppet.com/deric/mesos

### Conclusion (on going)
Which I would use really depends on the Team. I am capable in both so I would probably stick with what the rest of the team would like to work with.

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
As a contractor I will run into Puppet and Ansible a lot more. I'm sure Salt is great but the market share is pretty low. Time is limited. There are other things I am learning over Salt. Actually I am more interested in learning Chef next.


