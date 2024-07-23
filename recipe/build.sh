set -eux
./INSTALL
find sbin -type f -not -name "*.sh" | xargs sed -i '1s@.*@#!/usr/bin/env ruby@'
for x in bin gems lib man sbin; do
  rsync -av $x/ $PREFIX/$x/
done
cp -v VERSION $PREFIX/
