#!/bin/bash

# Script: Ops 301 Class 02 Ops Challenge 
# Author: Graceson Langston                  
# Date of latest revision: 08/30/22      

# Main

# Append filename variable
now=$(date +"%Y%m%d"-%T)

# Copy the syslog to the current directory
cp /var/log/syslog .

# renames the syslog with the date and time
mv syslog syslog$now

# End
