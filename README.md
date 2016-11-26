# Puppet and Ansible deploying Mesos
The purpose of this repo is to compare puppet and ansible. I used Mesos as a target. As it has a somewhat complicated deployment path. It also is here for me to learn Mesos better as a current client has started to use it.

## Disclaimer
Both ansible and mesos offer a community modules for mesos. I would probably take a look at using them for a real project.

### Conclusion (on going)
Ansible is crazy easy to learn. If you have some sort of knowledge of provisioning servers I believe you can master ansible in a few days. The same can *not* be said about puppet. If I was working in a larger group I would probably choose Ansible because I know the rest of the team will be able to pick it up real fast. But.. if I was the main devops engineer of the project. I would use puppet.

### Why do I prefer Puppet
Puppet is a lot smarter on what needs to run, which makes for faster deployments. Ansible by default runs everything. It has tags or you can use multiple playbook.yml files but they don't really have the same power as Puppet has built in.  The Puppet DSL is a lot more powerful. Of course with great power comes great responsibility. It is much easier to make a mess of Puppet than Ansible. But I have faith in my ability to make things clean(possible famous last words :D)

### You disagree with me? Or think Salt is the best.
Then use Ansible but prepare for sail speed deploys. Regardless, Anisible does make easier to read code. Choosing something for that reason is pretty valid.

Maybe you prefer Salt but as a contractor I will run into Puppet and Ansible a lot more. I'm sure Salt is great but the market share is pretty low. There are many other things I would rather put the time over learning Salt.

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
