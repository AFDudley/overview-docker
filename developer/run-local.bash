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

# create 'developer' container
docker rm developer
docker run -it -p 9000:9000 --name="developer" developer

# create and push 'developer-built' image
docker rmi developer-built
docker commit developer developer-built
docker tag developer-built znmeb/overview-developer-built
docker push znmeb/overview-developer-built
docker images
