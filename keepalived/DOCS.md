# Keepalived Addon

![Supports armhf Architecture][armhf-shield]
![Supports armv7 Architecture][armv7-shield]

This is a simple addon for using Keepalived with Home Assistant.
<br>
It is a personal project for me so i take no responsibility when it not works on any other machine.

[armhf-shield]: https://img.shields.io/badge/armhf-yes-green.svg
[armv7-shield]: https://img.shields.io/badge/armv7-yes-green.svg

## Configuration

Sample Configuration:
```yaml
interface: end0
password: changeme
router_id: "51"
priority: "255"
virtual_ips: 10.0.0.68
state: MASTER
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