# MOLD-Dock

This directory contains the Dockerfile and docker-compose files used to build, test and deploy a MOLD infrastructure.


In order to launch an MOLD instance you will need :

* docker
* docker-compose
* a virtuoso database

You can find the virtuoso database file here :

* YeastMold : http://mo-ld.org/download/yeastmold_vt.tar.gz
* ZebrafishMold : http://mo-ld.org/download/zebrafishmold_vt.tar.gz
* FlyMold : http://mo-ld.org/download/flymold_vt.tar.gz
* RatMold : http://mo-ld.org/download/ratmold_vt.tar.gz
* MouseMold : http://mo-ld.org/download/moussemold_vt.tar.gz
* HumanMold : http://mo-ld.org/download/humanmold_vt.tar.gz


## Example for YeastMold

```
git clone https://github.com/mo-ld/mold-dock.git
cd mold-dock
curl -L http://vt.mo-ld.org/download/yeastmold_vt.tar.gz | tar xvz
mv yeastmold_vt mold-virtuoso
docker-compose -f docker-compose.hub.yml -p yeastmold .
```
