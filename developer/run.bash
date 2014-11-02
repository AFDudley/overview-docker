#! /bin/bash
#
# Copyright (C) 2013 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

# build into 'developerc' container
docker rm developerc
docker run -it -p 9000:9000 \
  --name="developerc" \
  znmeb/overview-developer

# 'developerc' is still running - copy release tree into 'releasec' container
docker rm releasec
docker run -it -p 9000:9000 \
  --name="releasec" \
  --volumes-from="developerc" \
  znmeb/overview-release-template \
  cp -rp /home/overview/overview-server /home/overview/overview-release

# create and push 'overview-release' image
docker rmi znmeb/overview-release
docker commit releasec znmeb/overview-release
docker login
docker push znmeb/overview-release
docker images
