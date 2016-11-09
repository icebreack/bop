#!/bin/bash

sh bop.sh iprange_AWS.txt 27017 FinalAWS.txt
sh bop.sh iprange_BR.txt 27017 FinalBR.txt

sh bop.sh iprange_AWS.txt 5900 FinalAWS_VNC.txt
sh bop.sh iprange_BR.txt 5900 FinalBR_VNC.txt
sh bop.sh iprange_AZURE.txt 5900 FinalAZURE_VNC.txt

#sh bop_all.sh 5900 internet_vnc.txt;
#sh bop_all.sh 27017 internet_mongodb.txt
