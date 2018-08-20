#!/bin/sh
#php -S 0.0.0.0:8000 -t /mst/projects

#sudo apt install webfs
webfsd -F -p 8000 -r /mst/projects
