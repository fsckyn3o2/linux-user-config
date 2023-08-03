#!/bin/bash

if [ -n "$BACKUP_SYS_TARGET" ]; then

echo
echo "==========================="
echo " BACKUP - SYSTEM with rsync"
echo "==========================="
echo

  SOURCE_HOST=`hostname`
  DATE_BACKUP=`date +'%Y-%m'`
  BACKUP_PATH=$BACKUP_SYS_TARGET/$SOURCE_HOST/system/$DATE_BACKUP
  mkdir -p $BACKUP_PATH

  rsync -aAXH --delete --inplace --delete-during --delete-excluded --no-whole-file -hh --info=stats1,progress2 --exclude-from="system.exclusion" / $BACKUP_PATH
# old test : XZ_DEFAULTS="-T 3" XZ_OPT=-5 tar -Jcvf "$BACKUP_SYS_TARGET/$SOURCE_HOST-archlinux/system/archive-$DATE_BACKUP.tar.xz" $BACKUP_PATH

echo 
echo "================"
echo "ARCHIVE - BACKUP"
echo "================"
echo

  GZIP=-5 tar -zcvf "$BACKUP_SYS_TARGET/$SOURCE_HOST/system/archive-$DATE_BACKUP.tar.gzip" $BACKUP_PATH
  rm -rf $BACKUP_PATH
 
fi
