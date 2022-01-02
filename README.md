# CentOS 6.10 (vault)

`yum update` fails now because CentOS 6 reached end of life on Nov 30, 2020, and repository was removed from official server.

Repository is archived in vault.centos.org. This docker image refers Vault server as baseurl of repository.

## Changes from `centos:6` official image

* `/etc/yum.repos.d/*.repo` set to Vault URL (http://vault.centos.org/6.10/.)
* Disable fastmirror plugin.
* Run `yum update -y`

## Reference
* https://github.com/yidigun/centos5
