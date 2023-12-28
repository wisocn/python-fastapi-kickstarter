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

# Pre-requisites
To get started, you will need to install the following dependencies:
- install `nixpkgs` (https://nixos.org/download.html)
- install `docker` (https://docs.docker.com/get-docker/)
- install `direnv` (https://direnv.net/docs/installation.html)
- add direnv hook as `eval "$(direnv hook bash)"` at the end of your `$HOME/.bashrc`
- setup `flake` for `nix` as `echo 'experimental-features = nix-command flakes' >> ~/.config/nix/nix.conf`

