# Plausible Analytics setup examples

This repository acts as a a template to get up and running with [Plausible Analytics](https://github.com/plausible/analytics).

### How to use

Find instructions on how to run Plausible Analytics Self Hosted [in our docs](https://docs.plausible.io/self-hosting).

### Contributing

We are always looking to expand on the options and setups provided here. Feel free to open an issue or PR if you feel
something could be improved.


### Installation via script

`./install.sh` 


### Manual Installation

Clone this repository and then run the following commands:

**Plausible Analytics**

`git clone https://github.com/plausible/analytics`

`cd analytics`

Latest version does not start properly. We can use an older version, if not all new fixes and features are needed

`git checkout 3242327d`

`docker build -t plausible/analytics`

**Bytemark email hosting**

`git clone https://github.com/BytemarkHosting/docker-smtp`

`cd docker-smtp/stretch`

`docker build -t bytemark/smtp . `

Open `plausible-conf.env` in a text editor and change the values as needed. Make sure the password is at least six characters long. 

Now go back to the root of this `hosting` repository, and then start the docker containers using:

`docker-compose up -d`

Check if all containers are up and running and there are no errors using `docker ps` and `docker logs container-name`. 





