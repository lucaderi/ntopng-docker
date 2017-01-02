ntopng-docker
=============

## ntopng Dock Builder

#### Install & Run
```
$ export NTOP_ADMIN_PASSWORD=<md5 admin password>
$ docker run --net=host -t -p 3000:3000 -e NTOP_ADMIN_PASSWORD=$NTOP_ADMIN_PASSWORD  wincus/ntop:dev <ntopng arguments>
```
