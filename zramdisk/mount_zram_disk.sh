#!/bin/bash -u
# Only proceed if the drive is present.
if [[ ! -b "/dev/zram0" ]]; then
  echo "zram not found"
  exit 0
fi

# Monunt zram
if [[ ! "$(findmnt "/dev/zram0" | tail -1)" == "" ]]; then
  echo "zram already mounted"
else
  mkdir -p "/srv/.zramdisk"
  mount "/dev/zram0" "/srv/.zramdisk/"
  echo "zram mounted"
fi


  lusrs=`who -q | sort -r | tail -1 | tr " " "\n" | uniq`
  for iusr in $lusrs
  do
    echo "add space for user : $iusr"
    mkdir -p "/srv/.zramdisk/$iusr"
    chown $iusr:$iusr "/srv/.zramdisk/$iusr"
    chmod 0760 "/srv/.zramdisk/$iusr"
  done
  echo "zramdisk configured"

