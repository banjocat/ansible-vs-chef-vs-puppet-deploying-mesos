# Need to make this README better

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
