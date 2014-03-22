#!/bin/sh
sudo puppet apply /home/rowlando/puppet/manifests/site.pp  --modulepath=/home/rowlando/puppet/modules/ $*
