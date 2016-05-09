# MOLD-Dock

This directory contains the Dockerfile and docker-compose files used to build, test and deploy a MOLD infrastructure.


In order to launch an MOLD instance you will need :

* docker
* docker-compose
* a virtuoso database

You can find the virtuoso database file here :

* YeastMold : http://vt.mo-ld.org/DAV/mold_dump/yeastmold_vt.tar.gz
* ZebrafishMold :
* FlyMold :
* RatMold :
* MouseMold :
* HumanMold :


## Example for YeastMold

```
git clone https://github.com/mo-ld/mold-dock.git
cd mold-dock
curl -L http://vt.mo-ld.org/DAV/mold_dump/yeastmold_vt.tar.gz | tar xvz
mv yeastmold mold-virtuoso
docker-compose -f docker-compose.hub.yml -p yeastmold .
```

