# Introduction
This is a showcase repository on how to package, run, test, structure and organise a proper python project. It is my go-to place for templating the python 3+ project. 

The entrypoint to this project is Justfile

```bash
just -l

Available recipes:
    build
    request-api
    run
    teardown
```

# Prerequisite
To get started, you will need to install the following dependencies:
- install `nixpkgs` (https://nixos.org/download.html)
- install `docker` (https://docs.docker.com/get-docker/)
- install `direnv` (https://direnv.net/docs/installation.html)
- add direnv hook as `eval "$(direnv hook bash)"` at the end of your `$HOME/.bashrc`
- setup `flake` for `nix` as `echo 'experimental-features = nix-command flakes' >> ~/.config/nix/nix.conf`

# Poetry Package Manager
Project is using Poetry for python package managing. The development packages used are `python-dotenv` and `flask`

# Packaging the flask app into docker container
Repository is using `python:3.11-buster` for building the docker image and `python:3.11-slim-buster` for runtime. Please refer to `Dockerfile` for more info.

# Running docker container in conjuction with postgres + pgadmin + nginx
Packaged docker container shares the network with postgres, pgadmin and is fronted by reverse proxy `nginx`. 
