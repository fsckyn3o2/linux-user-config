#!/bin/bash

profile_scripts=`ls ~/.config/profile.d/*.sh`
for profilefile in $profile_scripts
do
   . $profilefile
done
