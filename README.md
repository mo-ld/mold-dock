# MOLD-Dock

This directory contains the Dockerfile and docker-compose files used to build, test and deploy a MOLD infrastructure.


In order to launch an MOLD instance you will need :

* docker
* docker-compose
* a virtuoso database

You can find the virtuoso database file here :

* YeastMold : http://mo-ld.org/download/yeastmold-vt.tar.gz
* ZebrafishMold : http://mo-ld.org/download/zebrafishmold-vt.tar.gz
* FlyMold : http://mo-ld.org/download/flymold-vt.tar.gz
* RatMold : http://mo-ld.org/download/ratmold-vt.tar.gz
* MouseMold : http://mo-ld.org/download/mousemold-vt.tar.gz
* HumanMold : http://mo-ld.org/download/humanmold-vt.tar.gz

Each Organism Virtuoso DB file has CORS enabled for /sparql and /fct (required) and have the default user/password dba/dba

## Example for YeastMold

```
git clone https://github.com/mo-ld/mold-dock.git
cd mold-dock
curl -L http://mo-ld.org/download/yeastmold-vt.tar.gz | tar xvz
mv yeastmold-vt mold-virtuoso
docker-compose -f docker-compose.hub.yml -p yeastmold up
```

You should now have an instance of yeastmold at http://localhost
