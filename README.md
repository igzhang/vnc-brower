# VNC Brower
It is easy to create multiple gui browers in your server, provided to people for different usage,such as office vpn,integrated with v2ray for pc beginner.

## Features
- Running in container,already test in docker.
- Multiple container in the same node.

## Requirements
- Docker server is installed.

## Quick Start
```
// firefox
docker run -p 6080:6080 -d -e PASSWD=123456 igzhang/vnc_brower:firefox
```
Then open brower
`http://{your ip}:6080`
