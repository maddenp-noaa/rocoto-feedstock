#!/bin/bash -eu

for x in boot check complete rewind run stat vacuum; do
  p=rocoto$x
  echo -n "Checking executable $p: "
  $p --version
done

for x in boot check complete rewind run stat; do
  p=rocoto$x
  echo -n "Checking manpage for $p: "
  man $p 2>&1 | grep "No manual entry for $p" && exit 1
  echo OK
done
