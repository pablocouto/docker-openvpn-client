# docker-openvpn-client

Dockerized OpenVPN client service.

# Installation

```bash
$ docker build -t pablocouto/docker-openvpn-client .
$ sudo install -o root -m 644 openvpn-client\@.service /etc/systemd/system/
```

# Usage

Given an OpenVPN configuration file `someVPN.conf` at `/etc/openvpn/`:

```bash
$ sudo systemctl start openvpn-client@someVPN.service
```
