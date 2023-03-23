#! /bin/bash

mv /spectrum/server/app/conf/spectrum-container.properties /spectrum/server/conf/spectrum-container_bckup.properties_bckup
if [ $? -eq 0 ]; then
           echo "INFO: Moved spectrum-container.properties successful"
else
           echo "ERROR: Moved spectrum-container.properties failed"
           exit 1
fi

cp -R /migration/spectrum-container.properties /spectrum/server/conf/spectrum-container.properties
if [ $? -eq 0 ]; then
           echo "INFO: Copied spectrum-container.properties successful"
else
           echo "ERROR: Copied spectrum-container.properties failed"
           exit 1
fi

#Jar -xf   /PBcfg/Backup_UAT/repository/backup.zip  -C /pbspectrum/repository/data/databases/ 
#unzip -d /pbspectrum/data/databases/ /PBcfg/backup_UAT/repository/backup.zip
