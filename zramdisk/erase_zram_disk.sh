#!/bin/bash -u
# Only proceed if the drive is present.
if [[ ! -b "/dev/zram0" ]]; then
  echo "zram not found"
  exit 0
fi

# Erase data from zram
cat /dev/zero > /dev/zram0
echo "zram0 erased"
