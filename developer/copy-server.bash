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

# start the 'server' container - the release files are on it
docker stop server
docker rm server
docker run -d --name="server" \
  -v /home/overview/overview-server \
  znmeb/overview-server \
  sh -c "while true; do sleep 15; done"

# start the destination 'release' container
docker rm release
docker run -it --name="release" --volumes-from="server" release

# export the container
docker export release | bzip2 -9c > release.tbz2

# commit an image
docker commit release release-built
