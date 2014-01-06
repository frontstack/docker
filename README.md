# Docker + FrontStack

> Setup a [Docker][1] container based on the [FrontStack][2] environment

## Installation

### Non-GNU/Linux installations

Docker can only run in GNU/Linux, however you can virtualize it in order to run over any other OS

1. Download and install [Virtualbox][3] and [Vagrant][4] for your OS (64 bit)

2. Clone this repository
```
$ git clone https://github.com/frontstack/docker.git && cd docker
```

3. Start the VM
```
$ vagrant up
```
```
$ vagrant ssh
```

### Build the container

From the cloned repository, create the FrontStack container
```
$ sudo docker build -t frontstack .
```

### Run it
```
$ sudo docker run frontstack
```

For debugging or testing purposes, you can open a Bash session inside the container
```
$ sudo docker run -t -i frontstack /opt/frontstack/bash.sh
```

### Enjoy it

[Open][6] the sample application in a browser or test it from CLI
```
$ curl -i localhost:3000
```

See the running containers processes
```
$ sudo docker ps
```
And the existent container images
```
$ sudo docker images
```

For more information about the available commands, see the Docker [documentation][5]

## Host requirements

  * 64 bits OS
  * 2GB RAM (4GB recommended)
  * 4GB HDD
  * Internet access (HTTP/S)


[1]: http://docker.io
[2]: http://github.com/frontstack/frontstack
[3]: https://www.virtualbox.org/wiki/Downloads
[4]: http://downloads.vagrantup.com/
[5]: http://docs.docker.io/en/latest/commandline/cli/
[6]: http://localhost:3000
