k3s-int requires truenas.lan to be reachable.

Some clients (like TV) cannot access Netbird network easily. Others need to remain accessible even if there is no connection to the internet.
This is why we also want to resolve certain hosts on the local network level.

```
192.168.1.100 pve.lan
192.168.1.104 truenas.lan
192.168.1.101 k3s-int.lan
192.168.1.101 vpn.lab.com
192.168.1.101 s3.vpn.lab.com
192.168.1.101 api.s3.vpn.lab.com
192.168.1.101 jellyfin.vpn.lab.com
192.168.1.101 homeassistant.vpn.lab.com
192.168.1.101 zigbee2mqtt.vpn.lab.com
192.168.1.101 frigate.vpn.lab.com
192.168.1.101 navidrome.vpn.lab.com
192.168.1.101 immich.vpn.lab.com
192.168.1.101 vaultwarden.vpn.lab.com
192.168.1.101 git.vpn.lab.com
192.168.1.101 pve.vpn.lab.com
192.168.1.101 grafana.vpn.lab.com
192.168.1.101 astl.vpn.lab.com
```

The easiest way is to put it into router's DNS.
