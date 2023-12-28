
# Poetry Package Manager
Project is using Poetry for python package managing. The development packages used are `python-dotenv` and `flask`

# Packaging the flask app into docker container
Repository is using `python:3.11-buster` for building the docker image and `python:3.11-slim-buster` for runtime. Please refer to `Dockerfile` for more info.

# Running docker container in conjuction with postgres + pgadmin + nginx
Packaged docker container shares the network with postgres, pgadmin and is fronted by reverse proxy `nginx`. 