#! /bin/bash

mv /spectrum/repository/data/databases/graph.db /spectrum/repository/data/databases/graph1.db1
cp -R /backup/graph.db /spectrum/repository/data/databases
#Jar -xf   /PBcfg/Backup_UAT/repository/backup.zip  -C /pbspectrum/repository/data/databases/ 
#unzip -d /pbspectrum/data/databases/ /PBcfg/backup_UAT/repository/backup.zip
