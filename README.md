<div align="center">

# ⭐ Don't forget to give me a star! ⭐

<img src="https://raw.githubusercontent.com/francescobianco/gif/main/images/push-button-h192.gif"/><img src="https://raw.githubusercontent.com/francescobianco/gif/main/images/give-stars-h192.gif" />

</div>

---

# javanile/novnc

This image is intended to run a small standalone server that can target either other machines on the same network or other Docker containers.

[![](https://images.microbadger.com/badges/image/javanile/novnc.svg)](https://hub.docker.com/r/javanile/novnc)
[![](https://images.microbadger.com/badges/version/javanile/novnc.svg)](https://hub.docker.com/r/javanile/novnc)

## Usage
**STEP #1** Place NoVNC service into your docker-compose.yml file
```yml
version: '2'

services:

  novnc:
    image: javanile/novnc
    environment:
      - REMOTE_HOST=localhost
      - REMOTE_PORT=5900
    ports:
      - 8081:8081
    links:
      - selenium

  selenium:
    image: selenium/standalone-chrome-debug:3.11.0-californium
    environment:
      - VNC_NO_PASSWORD=1
      - SCREEN_WIDTH=1200
      - SCREEN_HEIGHT=675
    ports:
      - 4444:4444
      - 5900:5900
```
**STEP #2** Run container with follow command
```bash
docker-compose up -d
```
**STEP #3** Now visit this http://localhost:8081 boom!

## Configuration
Two environment variables exist in the docker file for configuration REMOTE_HOST and REMOTE_PORT.

### Variables
- **REMOTE_HOST**: Host running a VNC Server to connect to - defaults to *localhost*
- **REMOTE_PORT**: Port that the VNC Server is listening on - defaults to *5900*

### Ports
- **8081** is exposed by default.

## Standalone usage
```bash
docker run -d -p 8081:8081 -e REMOTE_HOST=192.168.86.135 -e REMOTE_PORT=5901 javanile/novnc
```
