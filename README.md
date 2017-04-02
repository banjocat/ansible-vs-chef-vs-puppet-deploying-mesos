# Ansible, Chef and Puppet deploying Mesos
The purpose of this repo is to compare ansible, chef and puppet. I used Mesos as a target. As it has a somewhat complicated deployment path. It also is here for me to learn Mesos better as a current client has started to use it.


### Conclusion (on going)
Which I would use really depends on the Team. I am capable in all three so I would probably stick with what the rest of the team would like to work with. If it was up entirely to me. I would pick Ansible. I like Chef because it gives a full programming language to use.. of course this can create a mess. Ansible is the easiest of all to learn but it is the slowest unless you use a lot of tags and multiple playbooks(which then increase the complexity of your code). Puppet is probably my least favorite but it has amazing 3rd party support.

### When I would use Ansible
* If it was up to me to choose the tool alone.
* DevOps team is not stable. The team is new and doesn't have focus yet.
* The DevOps team wants to use Ansible
* Most of the people that will be touching DevOps side are developers with no Puppet knowledge at all.

### When I would use Chef
* Entire team is ruby based or at least likes ruby
* If deployment is going to be very complicated and requires a full language
* DevOps team is small and dedicated
* You feel like you won't make a mess of things(famous last words)

### When I would choose Puppet
* DevOps team is small, possibly one person.
* DevOps team has good code sense. Puppet code becomes much cleaner when following good coding guidelines. Specifically DRY, KISS and notinventedhere. A good puppet code is cleaner than Ansible.
* The DevOps team wants to use Puppet, but I would ask questions why they want to use it. To me, being familiar with Puppet is not alone a good reason to use it. Anyone who knows puppet can pick up Ansible very quickly.

### What about Salt?
As a contractor I will run into Ansible, Chef and Puppet a lot more. I'm sure Salt is great but the market share is pretty low. Time is limited. There are other things I am learning over Salt. 


