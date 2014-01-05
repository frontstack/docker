# Docker + FrontStack

> Configuration to setup a [Docker][1] system with pre-installed [FrontStack][2] in Docker containers

## Non-GNU/Linux installations

Docker can only run in GNU/Linux, however you can virtualize it in order to run it over other OS

1. Download [Virtualbox][3] and [Vagrant][4] for your OS (64 bit)

2. Clone this repository
```
$ git clone https://github.com/frontstacK/docker.git && cd docker
```

3. Start the VM
```
$ vagrant up
```
... and enter it

```
$ vagrant ssh
```

4. Start the FrontStack Docker container
```
$ cd docker && sudo docker build .
```

## GNU/Linux installation



## Host requirements

  * 64 bits OS
  * 2GB RAM (4GB recommended)
  * 4GB HDD
  * Internet access (HTTP/S)


[1]: http://docker.io
[2]: http://github.com/frontstack/frontstack
[3]: https://www.virtualbox.org/wiki/Downloads
[4]: http://downloads.vagrantup.com/