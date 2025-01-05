# Keepalived Addon

![Supports armv7 Architecture][armv7-shield]
![Supports amd64 Architecture][amd64-shield]
![Supports aarch64 Architecture][aarch64-shield]


This is a simple addon for using Keepalived with Home Assistant.
<br>
It is a personal project for me so i take no responsibility when it not works on any other machine.

[armv7-shield]: https://img.shields.io/badge/armv7-yes-green.svg
[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg

## Configuration

Sample Configuration:
```yaml
interface: end0
password: changeme
router_id: "51"
priority: "255"
virtual_ips: 10.0.0.68
state: MASTER
addon: "3983e8d8_letsdnsocloud"
```

### Option `interface`
The interface to attach the virtual IP to

### Option `password`
Authentication password for VRRP communication

### Option `router_id`
Unique identifier for the router

### Option `priority`
Priority of the VRRP instance

### Option `virtual_ips`
Virtual IP adress

### Option `state`
Initial state of the keepalived instance

### Option `addon`
Addon which should be checked for