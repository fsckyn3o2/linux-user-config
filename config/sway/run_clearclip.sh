#!/bin/bash

if [ -z /srv/.zramdisk/$USER/.clipboard ]; then
  shred -uv -n 2 /srv/.zramdisk/$USER/.clipboard
  notifiy-send "CLipboard cleared!"
fi

echo "" > /srv/.zramdisk/$USER/.clipboard
