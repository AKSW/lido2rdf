# lido2rdf

# Installation

 - [Docker](https://docs.docker.com/engine/installation/) (> `1.13.0`)  und [Docker-Compose](https://docs.docker.com/compose/install/)
   - Windows users who are not using Windows 10 may need to switch to a Virtual Linux machine on their system. Please refer: [](https://docs.docker.com/docker-for-windows/install/)

# start creating the RDF dump from your own SQL dump

 - put your dump.sql in `lido2rdf/backend/docker-workdir/postgres` :

 - put your mapping.sml in `lido2rdf/backend/docker-workdir/sparqlify` : 

 - run following commands in `lido2rdf/backend/lido-docker-network/` :

```bash
rm -f ../../frontend/tmp/pids/server.pid
docker-compose build && docker-compose up
```
 - Alternatively, the start script `start.sh` can be executed from the root directory via`. / Backend / lido-docker-network / start.sh`

The initial build process can take a few minutes. Future builds are optimized by caching methods of Docker technology.  
The database connection fails the first time the Docker container is started. Please stop the Docker and restart.
  
It works when `lidodockernetwork_sparqlify_1 exited with code 0` appears.
