# Plausible Analytics setup examples

This repository acts as a a template to get up and running with [Plausible Analytics](https://github.com/plausible/analytics).

### How to use

Find instructions on how to run Plausible Analytics Self Hosted [in our docs](https://docs.plausible.io/self-hosting).

### Contributing

We are always looking to expand on the options and setups provided here. Feel free to open an issue or PR if you feel
something could be improved.

## How to install

Clone this repository

`git clone https://github.com/onthebridgetonowhere/hosting.git`

### Installation via script

**ARM64**

`./install-arm64.sh` - it installs plausible analytics at commit 3242327d (Sept 2021) with clickhouse 22.3.3-alpine version. The newer versions of Plausible do not start properly, thus I use an old version. Hopefully it will be fixed soon. 

**X64**

`./install-x64.sh` - installs the latest plausible analytics with clickhouse 22.3.3-alpine version. It simply calls the docker-compose file.

### Manual Installation for ARM64 only

**Plausible Analytics**

`git clone https://github.com/plausible/analytics`

`cd analytics`

`git checkout 3242327d && docker build -t plausible/analytics . `

**Bytemark email hosting - instructions needed for ARM64 only**

The email smtp server does not have an ARM64 docker image, so we need to build it ourselves. 

`git clone https://github.com/BytemarkHosting/docker-smtp`

`cd docker-smtp/stretch && docker build -t bytemark/smtp . `

### Configuration

Open `plausible-conf.env` in a text editor and change the values as needed. Make sure the password is at least six characters long. 

### Running
Go to the root of this `hosting` repository and start the docker containers using:

`docker-compose up -d`

Check if all containers are up and running and there are no errors using `docker ps` and `docker logs container-name`. 

To stop the containers, run `docker-compose down`. 

To update Plausible (as per the docs) run: 

```
docker-compose down --remove-orphans
docker-compose pull plausible
docker-compose up -d
```