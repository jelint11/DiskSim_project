#####THIS SCRIPT FIXES IT ALL##################################################
#This script assumes the conditions of the README, make sure it is so         #
#This runs the ssdmodel patch, then the 64bit patch, then fixes the patch and #
#cleans up the niceties of the build process                                  #
###############################################################################

#!/bin/bash
cd ../
sed -i 's/\r$//' ssdmodel/ssd.h
sed -i 's/\r$//' ssdmodel/ssd_init.c
sed -i 's/\r$//' ssdmodel/include/ssdmodel/ssd.h
patch -p1 < 64bit-ssd-patch-files/patch-files/ssd-patch
patch -p1 < 64bit-ssd-patch-files/patch-files/64bit-with-dixtrac-ssd-patch
cd 64bit-ssd-patch-files/modified-source-files
cp src/* ../../src/.
cp run_pfs.sh ../../.
