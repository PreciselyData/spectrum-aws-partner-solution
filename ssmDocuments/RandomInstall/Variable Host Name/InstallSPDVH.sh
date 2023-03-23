#! /bin/bash
#Get hostname from server and append Spectrum connect command to cliRun.cli
echo -e "connect --h `hostname`:8080 --u admin --p admin" > cliRun.cli
#echo -e "connect --h `hostname`:443 --u admin --p admin --s true" > cliRun.cli

# Append cli commands to cliRun.cli
cat InstallSPDVH.cli >> cliRun.cli
#Run  cliRun.cli
./cli.sh --cmdfile /apps/cli/cliRun.cli

