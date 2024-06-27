set -eux
./INSTALL
for x in bin lib man sbin; do
  rsync -av $x/ $PREFIX/$x/
done
