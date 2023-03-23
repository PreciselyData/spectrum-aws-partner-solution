#!/bin/sh

# Spectrum patch path with extracted tar files.
patch_tar_path="/apps/pb/spectrum_patches/downloads/tarfiles/"

# Spectrum old jar file backup path
patch_sp_bkp_path="/apps/pb/spectrum_backup/spectrum_patch_bkp"

# Change directory to spectrum home path
spectrum_path ="/apps/pb/spectrum"


# Create sub-directories within the backup directory
mkdir -p "${patch_sp_bkp_path}/server/lib"
mkdir -p "${patch_sp_bkp_path}/server/deploy"
mkdir -p "${patch_sp_bkp_path}/server/modules"
mkdir -p "${patch_sp_bkp_path}/server/bin"
mkdir -p "${patch_sp_bkp_path}/server/exports"
mkdir -p "${patch_sp_bkp_path}/index"
mkdir -p "${patch_sp_bkp_path}/repository"

# Copy all Spectrum resources that can possibly be patched into subdirectories
cp -R ${spectrum_path}/server/lib/ ${patch_sp_bkp_path}/server/
cp -R ${spectrum_path}/server/deploy/ ${patch_sp_bkp_path}/server/
cp -R ${spectrum_path}/server/modules/ ${patch_sp_bkp_path}/server/
cp -R ${spectrum_path}/server/bin/ ${patch_sp_bkp_path}/server/
cp -R ${spectrum_path}/server/exports/ ${patch_sp_bkp_path}/server/
cp -R ${spectrum_path}/index/ ${patch_sp_bkp_path}/
cp -R ${spectrum_path}/repository/ ${patch_sp_bkp_path}/


# Change directory to spectrum home path
cd spectrum_path

# Deploy new patch tar file

# patch 2020.1.0 S01 
echo -e "Deploying S01 Patch"
tar -xvf $patch_tar_path/cdq20201s01.tar

# patch 2020.1.0 S03 
echo -e "Deploying S03 Patch"
tar -xvf $patch_tar_path/cdq20201s03.tar

# patch 2020.1.0 S05
echo -e "Deploying S05 Patch"
rm -rf /apps/pb/spectrum/server/lib/modelstore-jdbc.jar
rm -rf /apps/pb/spectrum/server/deploy/discovery-20.1.car
rm -rf /apps/pb/spectrum/server/conf/spectrum-container.properties
tar -xvf $patch_tar_path/cdq20201s05.tar

# patch 2020.1.0 S06
echo -e "Deploying S06 Patch"
tar -xvf $patch_tar_path/cdq20201s06.tar
# delete the g1Assemblies folder (%temp%\g1Assemblies) where Enterprise Designer is installed for each user (e.g. C:\Users\<USERNAME>\AppData\Local\Temp\g1Assemblies)
# reinstall the Administration Utility to update the Command Line Interface (CLI) on every machine where it is currently installed. 

# patch 2020.1.0 S08
echo -e "Deploying S08 Patch"
#remove old version jar
rm -rf ${spectrum_path}/server/lib/cron-utils-9.0.1.jar
rm -rf ${spectrum_path}/server/lib/hazelcast-3.12.9.jar
rm -rf ${spectrum_path}/server/lib/hazelcast-enterprise-3.12.9.jar
rm -rf ${spectrum_path}/server/lib/hazelcast-enterprise-client-3.12.9.jar
rm -rf ${spectrum_path}/server/lib/hazelcast-spring-3.12.9.jar
rm -rf ${spectrum_path}/server/lib/woodstox-core-5.2.1.jar
tar -xvf $patch_tar_path/cdq20201s08.tar
#delete the g1Assemblies folder (%temp%\g1Assemblies) where Enterprise Designer is installed for each user (e.g. C:\Users\<USERNAME>\AppData\Local\Temp\g1Assemblies)

# patch 2020.1.0 S10
# remove old version jar
rm -rf ${spectrum_path}/server/lib/spectrum-server-config-glossary-core-20.1.jar
rm -rf ${spectrum_path}/server/deploy/discovery-20.1.car
rm -rf ${spectrum_path}/server/deploy/discovery.glossary.war
rm -rf ${spectrum_path}/server/deploy/discovery.modelling.war
rm -rf ${spectrum_path}/server/deploy/discovery.catalog.war
rm -rf ${spectrum_path}/server/deploy/discovery.profiling.war
rm -rf ${spectrum_path}/server/deploy/discovery.lineage.war
rm -rf ${spectrum_path}/server/deploy/discovery.query.war
rm -rf ${spectrum_path}/server/deploy/profiling-20.1.car
rm -rf ${spectrum_path}/server/deploy/cassandraConnector-20.1.car
rm -rf ${spectrum_path}/server/deploy/fileConnector-20.1.car
rm -rf ${spectrum_path}/server/deploy/fileConnectionView.war
rm -rf ${spectrum_path}/server/deploy/afcDeployableView.war
rm -rf ${spectrum_path}/server/deploy/msdynamicsConnectionView.war
rm -rf ${spectrum_path}/server/deploy/salesforceConnectionView.war
tar -xvf $patch_tar_path/cdq20201s10.tar

# patch 2020.1.0 S11
# remove old version jar
rm -rf ${spectrum_path}/server/lib/spectrum-api-persistence-index-20.1.jar
rm -rf ${spectrum_path}/server/lib/spectrum-server-common-audit-archive-20.1.jar
rm -rf ${spectrum_path}/server/lib/spectrum-server-common-audit-model-20.1.jar
rm -rf ${spectrum_path}/server/lib/spectrum-server-common-audit-persist-common-20.1.jar
rm -rf ${spectrum_path}/server/lib/spectrum-server-common-audit-persist-elasticsearch-20.1.jar
rm -rf ${spectrum_path}/server/lib/spectrum-server-common-persistence-index-20.1.jar
rm -rf ${spectrum_path}/server/lib/spectrum-server-config-core-20.1.jar
rm -rf ${spectrum_path}/server/lib/spectrum-server-runtime-core-20.1.jar
rm -rf ${spectrum_path}/server/lib/spectrum-server-transaction-core-20.1.jar
tar -xvf $patch_tar_path/cdq20201s11.tar
# reinstall the Administration Utility to update the Command Line Interface (CLI) on every machine where it is currently installed. 

# patch 2020.1.0 S12
# remove old version jar
tar -xvf $patch_tar_path/cdq20201s12.tar
rm -rf ${spectrum_path}/server/modules/addressgolbal/lib/addressdoctor-5.16.jar

# patch 2020.1.0 S13
# remove old version jar
# Delete a non-empty directory, and all of its contents use the -r (--recursive or -R) option.
# If a directory or a file within the directory is write-protected, you will be prompted to confirm the deletion. To remove a directory without being prompted, use the -f option:
rm -rf ${spectrum_path}/repository
tar -xvf $patch_tar_path/cdq20201s13.tar
cp -R ${patch_sp_bkp_path}/repository/data/databases/graph.db  ${spectrum_path}/repository/data/databases

#!/bin/sh

# Spectrum patch path with extracted tar files.
patch_tar_path="${spectrum_path}_patches/downloads/tarfiles/"

# Spectrum old jar file backup path
patch_sp_bkp_path="${spectrum_path}_backup/spectrum_patch_bkp/"

# Change directory to spectrum home path
cd ${spectrum_path}


# patch 2020.1.0 S15
tar -xvf $patch_tar_path/cdq20201s15.tar

# patch 2020.1.0 S16
tar -xvf $patch_tar_path/cdq20201s16.tar

# patch 2020.1.0 S17
tar -xvf $patch_tar_path/cdq20201s17.tar

# patch 2020.1.0 S19
tar -xvf $patch_tar_path/cdq20201s19.tar

# patch 2020.1.0 S20
#remove old version jar files
rm -rf ${spectrum_path}/server/lib/spectrum-api-metadata-20.1.jar
rm -rf ${spectrum_path}/server/lib/spectrum-server-runtime-core-20.1.jar
rm -rf ${spectrum_path}/server/deploy/afcDeployableView.war
rm -rf ${spectrum_path}/server/deploy/discovery.catalog.war
rm -rf ${spectrum_path}/server/deploy/discovery.glossary.war
rm -rf ${spectrum_path}/server/deploy/discovery.lineage.war
rm -rf ${spectrum_path}/server/deploy/discovery.modelling.war
rm -rf ${spectrum_path}/server/deploy/discovery.profiling.war
rm -rf ${spectrum_path}/server/deploy/discovery.query.war
rm -rf ${spectrum_path}/server/deploy/discovery.war
rm -rf ${spectrum_path}/server/deploy/discovery-20.1.car
rm -rf ${spectrum_path}/server/deploy/fileConnectionView.war
rm -rf ${spectrum_path}/server/deploy/msdynamicsConnectionView.war
rm -rf ${spectrum_path}/server/deploy/profiling-20.1.car
rm -rf ${spectrum_path}/server/deploy/salesforceConnectionView.war
rm -rf ${spectrum_path}/server/deploy/simpledbConnector-20.1.car
tar -xvf $patch_tar_path/cdq20201S20.tar

# patch 2020.1.0 S21
tar -xvf $patch_tar_path/cdq20201s21.tar

# patch 2020.1.0 S22
tar -xvf $patch_tar_path/cdq20201s22.tar

# patch 2020.1.0 S24
tar -xvf $patch_tar_path/cdq20201s24.tar

# patch 2020.1.0 S25
#remove old jar files
rm -rf ${spectrum_path}/server/lib/spectrum-api-metadata-20.1.jar
rm -rf ${spectrum_path}/server/lib/spectrum-server-runtime-core-20.1.jar
rm -rf ${spectrum_path}/server/deploy/discovery.modelling.war
tar -xvf $patch_tar_path/cdq20201s25.tar

# patch 2020.1.0 S27
tar -xvf $patch_tar_path/cdq20201s27.tar

# patch 2020.1.0 S28
#remove old jar files
rm -rf ${spectrum_path}/index/lib/jackson-dataformat-cbor-2.8.11.jar
rm -rf ${spectrum_path}/index/modules/transport-netty4/netty-buffer-4.1.52.Final.jar
rm -rf ${spectrum_path}/index/modules/transport-netty4/netty-codec-4.1.52.Final.jar
rm -rf ${spectrum_path}/index/modules/transport-netty4/netty-codec-http-4.1.52.Final.jar
rm -rf ${spectrum_path}/index/modules/transport-netty4/netty-common-4.1.52.Final.jar
rm -rf ${spectrum_path}/index/modules/transport-netty4/netty-handler-4.1.52.Final.jar
rm -rf ${spectrum_path}/index/modules/transport-netty4/netty-resolver-4.1.52.Final.jar
rm -rf ${spectrum_path}/index/modules/transport-netty4/netty-transport-4.1.52.Final.jar
rm -rf ${spectrum_path}/index/modules/x-pack-core/netty-transport-4.1.52.Final.jar
rm -rf ${spectrum_path}/index/modules/x-pack-core/netty-codec-4.1.52.Final.jar
rm -rf ${spectrum_path}/index/modules/x-pack-core/netty-codec-http-4.1.52.Final.jar
rm -rf ${spectrum_path}/index/modules/x-pack-core/netty-common-4.1.52.Final.jar
rm -rf ${spectrum_path}/index/modules/x-pack-core/netty-handler-4.1.52.Final.jar
rm -rf ${spectrum_path}/index/modules/x-pack-core/netty-resolver-4.1.52.Final.jar
rm -rf ${spectrum_path}/index/modules/x-pack-core/netty-buffer-4.1.52.Final.jar
rm -rf ${spectrum_path}/repository/lib/commons-compress-1.19.jar
rm -rf ${spectrum_path}/repository/lib/commons-io-2.6.jar
rm -rf ${spectrum_path}/repository/lib/jetty-http-9.4.38.v20210224.jar
rm -rf ${spectrum_path}/repository/lib/jetty-io-9.4.38.v20210224.jar
rm -rf ${spectrum_path}/repository/lib/jetty-security-9.4.38.v20210224.jar
rm -rf ${spectrum_path}/repository/lib/jetty-server-9.4.38.v20210224.jar
rm -rf ${spectrum_path}/repository/lib/jetty-servlet-9.4.38.v20210224.jar
rm -rf ${spectrum_path}/repository/lib/jetty-util-9.4.38.v20210224.jar
rm -rf ${spectrum_path}/repository/lib/jetty-util-ajax-9.4.38.v20210224.jar
rm -rf ${spectrum_path}/repository/lib/jetty-webapp-9.4.38.v20210224.jar
rm -rf ${spectrum_path}/repository/lib/jetty-xml-9.4.38.v20210224.jar
rm -rf ${spectrum_path}/server/bin/backup-20.1.jar
rm -rf ${spectrum_path}/server/bin/enableadmin-20.1.jar
rm -rf ${spectrum_path}/server/deploy/common.war
rm -rf ${spectrum_path}/server/deploy/dcg.war
rm -rf ${spectrum_path}/server/deploy/ews.war
rm -rf ${spectrum_path}/server/deploy/ews-20.1.car
rm -rf ${spectrum_path}/server/deploy/fileservers.war
rm -rf ${spectrum_path}/server/deploy/flow-designer.war
rm -rf ${spectrum_path}/server/deploy/managementconsole.war
rm -rf ${spectrum_path}/server/exports/jobexecutor.jar
rm -rf ${spectrum_path}/server/exports/spectrum-cli-20.1.zip
rm -rf ${spectrum_path}/server/lib/commons-compress-1.19.jar
rm -rf ${spectrum_path}/server/lib/commons-io-2.6.jar
rm -rf ${spectrum_path}/server/lib/jackson-annotations-2.10.3.jar
rm -rf ${spectrum_path}/server/lib/jackson-core-2.10.3.jar
rm -rf ${spectrum_path}/server/lib/jackson-databind-2.10.3.jar
rm -rf ${spectrum_path}/server/lib/jackson-dataformat-xml-2.10.3.jar
rm -rf ${spectrum_path}/server/lib/jackson-module-jaxb-annotations-2.10.3.jar
rm -rf ${spectrum_path}/server/lib/jetty-annotations-9.4.33.v20201020.jar
rm -rf ${spectrum_path}/server/lib/jetty-client-9.4.33.v20201020.jar
rm -rf ${spectrum_path}/server/lib/jetty-continuation-9.4.33.v20201020.jar
rm -rf ${spectrum_path}/server/lib/jetty-deploy-9.4.33.v20201020.jar
rm -rf ${spectrum_path}/server/lib/jetty-http-9.4.33.v20201020.jar
rm -rf ${spectrum_path}/server/lib/jetty-io-9.4.33.v20201020.jar
rm -rf ${spectrum_path}/server/lib/jetty-jmx-9.4.33.v20201020.jar
rm -rf ${spectrum_path}/server/lib/jetty-jndi-9.4.33.v20201020.jar
rm -rf ${spectrum_path}/server/lib/jetty-plus-9.4.33.v20201020.jar
rm -rf ${spectrum_path}/server/lib/jetty-rewrite-9.4.33.v20201020.jar
rm -rf ${spectrum_path}/server/lib/jetty-security-9.4.33.v20201020.ja
rm -rf ${spectrum_path}/server/lib/jetty-server-9.4.33.v20201020.jar
rm -rf ${spectrum_path}/server/lib/jetty-servlet-9.4.33.v20201020.jar
rm -rf ${spectrum_path}/server/lib/jetty-util-9.4.33.v20201020.jar
rm -rf ${spectrum_path}/server/lib/jetty-webapp-9.4.33.v20201020.jar
rm -rf ${spectrum_path}/server/lib/jetty-xml-9.4.33.v20201020.jar
rm -rf ${spectrum_path}/server/lib/json-smart-2.3.jar
rm -rf ${spectrum_path}/server/lib/netty-buffer-4.1.52.Final.jar
rm -rf ${spectrum_path}/server/lib/netty-codec-4.1.52.Final.jar
rm -rf ${spectrum_path}/server/lib/netty-codec-http-4.1.52.Final.jar
rm -rf ${spectrum_path}/server/lib/netty-common-4.1.52.Final.jar
rm -rf ${spectrum_path}/server/lib/netty-handler-4.1.52.Final.jar
rm -rf ${spectrum_path}/server/lib/netty-resolver-4.1.52.Final.jar
rm -rf ${spectrum_path}/server/lib/netty-transport-4.1.52.Final.jar
rm -rf ${spectrum_path}/server/lib/resteasy-client-4.5.2.Final.jar
rm -rf ${spectrum_path}/server/lib/resteasy-client-api-4.5.2.Final.jar
rm -rf ${spectrum_path}/server/lib/resteasy-core-4.5.2.Final.jar
rm -rf ${spectrum_path}/server/lib/resteasy-core-spi-4.5.2.Final.jar
rm -rf ${spectrum_path}/server/lib/spectrum-server-config-core-20.1.jar
rm -rf ${spectrum_path}/server/lib/velocity-engine-core-2.2.jar
tar -xvf $patch_tar_path/cdq20201s28.tar
# reinstall the Administration Utility to update the Command Line Interface (CLI) on every machine where it is currently installed.

# patch 2020.1.0 S30
tar -xvf $patch_tar_path/cdq20201s30.tar

# patch 2020.1.0 S32
#remove the old jar files
rm -rf ${spectrum_path}/index/lib/xmlsec-2.0.5.jar
rm -rf ${spectrum_path}/index/modules/reindex/commons-codec-1.10.jar
rm -rf ${spectrum_path}/index/modules/reindex/httpclient-4.5.7.jar
rm -rf ${spectrum_path}/index/modules/transport-netty4/netty-buffer-4.1.60.Final.jar
rm -rf ${spectrum_path}/index/modules/transport-netty4/netty-codec-4.1.60.Final.jar
rm -rf ${spectrum_path}/index/modules/transport-netty4/netty-codec-http-4.1.60.Final.jar
rm -rf ${spectrum_path}/index/modules/transport-netty4/netty-common-4.1.60.Final.jar
rm -rf ${spectrum_path}/index/modules/transport-netty4/netty-handler-4.1.60.Final.jar
rm -rf ${spectrum_path}/index/modules/transport-netty4/netty-resolver-4.1.60.Final.jar
rm -rf ${spectrum_path}/index/modules/transport-netty4/netty-transport-4.1.60.Final.jar
rm -rf ${spectrum_path}/index/modules/x-pack-core/commons-codec-1.10.jar
rm -rf ${spectrum_path}/index/modules/x-pack-core/httpclient-4.5.7.jar
rm -rf ${spectrum_path}/index/modules/x-pack-core/netty-buffer-4.1.60.Final.jar
rm -rf ${spectrum_path}/index/modules/x-pack-core/netty-codec-4.1.60.Final.jar
rm -rf ${spectrum_path}/index/modules/x-pack-core/netty-codec-http-4.1.60.Final.jar
rm -rf ${spectrum_path}/index/modules/x-pack-core/netty-common-4.1.60.Final.jar
rm -rf ${spectrum_path}/index/modules/x-pack-core/netty-handler-4.1.60.Final.jar
rm -rf ${spectrum_path}/index/modules/x-pack-core/netty-resolver-4.1.60.Final.jar
rm -rf ${spectrum_path}/index/modules/x-pack-core/netty-transport-4.1.60.Final.jar
rm -rf ${spectrum_path}/repository/lib/netty-all-4.1.48.Final.jar
rm -rf ${spectrum_path}/server/deploy/dcg.war
rm -rf ${spectrum_path}/server/deploy/ews-20.1.car
rm -rf ${spectrum_path}/server/deploy/managementconsole.war
rm -rf ${spectrum_path}/server/deploy/managers.war
rm -rf ${spectrum_path}/server/deploy/productapi.war
rm -rf ${spectrum_path}/server/deploy/rest.war
rm -rf ${spectrum_path}/server/deploy/security.war
rm -rf ${spectrum_path}/server/deploy/soap.war
rm -rf ${spectrum_path}/server/deploy/stsproxy.war
rm -rf ${spectrum_path}/server/exports/client-20.1-Common.zip
rm -rf ${spectrum_path}/server/lib/commons-codec-1.13.jar
rm -rf ${spectrum_path}/server/lib/httpclient-4.5.7.jar
rm -rf ${spectrum_path}/server/lib/netty-buffer-4.1.60.Final.jar
rm -rf ${spectrum_path}/server/lib/netty-codec-4.1.60.Final.jar
rm -rf ${spectrum_path}/server/lib/netty-codec-http-4.1.60.Final.jar
rm -rf ${spectrum_path}/server/lib/netty-common-4.1.60.Final.jar
rm -rf ${spectrum_path}/server/lib/netty-handler-4.1.60.Final.jar
rm -rf ${spectrum_path}/server/lib/netty-resolver-4.1.60.Final.jar
rm -rf ${spectrum_path}/server/lib/netty-transport-4.1.60.Final.jar
rm -rf ${spectrum_path}/server/lib/poi-3.17.jar
rm -rf ${spectrum_path}/server/lib/poi-ooxml-3.17.jar
rm -rf ${spectrum_path}/server/lib/poi-ooxml-schemas-3.17.jar
rm -rf ${spectrum_path}/server/lib/xmlsec-2.0.5.jar
tar -xvf $patch_tar_path/cdq20201s32.tar
#delete the g1Assemblies folder (%temp%\g1Assemblies) where Enterprise Designer is installed for each user (e.g. C:\Users\<USERNAME>\AppData\Local\Temp\g1Assemblies)

# patch 2020.1.0 S43
#Back up files specified in the release notes
cp -R  ${spectrum_path}/index/bin/elasticsearch-sql-cli-6.8.8.jar ${patch_sp_bkp_path}/server/index/bin/
cp -R  ${spectrum_path}/index/lib/log4j-1.2-api-2.11.1.jar ${patch_sp_bkp_path}/server/index/lib/
cp -R  ${spectrum_path}/index/lib/log4j-api-2.11.1.jar ${patch_sp_bkp_path}/server/index/lib/
cp -R  ${spectrum_path}/index/lib/log4j-core-2.11.1.jar ${patch_sp_bkp_path}/server/index/lib/
cp -R  ${spectrum_path}/index/lib/xmlsec-2.2.3.jar ${patch_sp_bkp_path}/server/index/lib/
cp -R  ${spectrum_path}/index/modules/x-pack-security/log4j-slf4j-impl-2.11.1.jar ${patch_sp_bkp_path}/server/index/modules/
cp -R  ${spectrum_path}/server/deploy/security.war ${patch_sp_bkp_path}/server/deploy/
cp -R  ${spectrum_path}/server/deploy/stsproxy.war ${patch_sp_bkp_path}/server/deploy/
cp -R  ${spectrum_path}/server/lib/log4j-api-2.14.1.jar ${patch_sp_bkp_path}/server/lib/
cp -R  ${spectrum_path}/server/lib/log4j-to-slf4j-2.14.1.jar ${patch_sp_bkp_path}/server/lib/
cp -R  ${spectrum_path}/server/lib/spectrum-server-config-rest-20.1.jar ${patch_sp_bkp_path}/server/lib/
cp -R  ${spectrum_path}/server/lib/spectrum-server-runtime-core-20.1.jar ${patch_sp_bkp_path}/server/lib/
cp -R  ${spectrum_path}/server/lib/spectrum-server-transaction-core-20.1.jar ${patch_sp_bkp_path}/server/lib/
cp -R  ${spectrum_path}/server/lib/spectrum-server-transaction-persist-common-20.1.jar ${patch_sp_bkp_path}/server/lib/
cp -R  ${spectrum_path}/server/lib/xmlbeans-3.1.0.jar ${patch_sp_bkp_path}/server/lib/
cp -R  ${spectrum_path}/server/lib/xmlsec-2.2.3.jar ${patch_sp_bkp_path}/server/lib/
#remove old jar files
rm -rf ${spectrum_path}/index/bin/elasticsearch-sql-cli-6.8.8.jar
rm -rf ${spectrum_path}/index/lib/log4j-1.2-api-2.11.1.jar
rm -rf ${spectrum_path}/index/lib/log4j-api-2.11.1.jar
rm -rf ${spectrum_path}/index/lib/log4j-core-2.11.1.jar
rm -rf ${spectrum_path}/index/lib/xmlsec-2.2.3.jar
rm -rf ${spectrum_path}/index/modules/x-pack-security/log4j-slf4j-impl-2.11.1.jar
rm -rf ${spectrum_path}/server/deploy/security.war
rm -rf ${spectrum_path}/server/deploy/stsproxy.war
rm -rf ${spectrum_path}/server/lib/log4j-api-2.14.1.jar
rm -rf ${spectrum_path}/server/lib/log4j-to-slf4j-2.14.1.jar
rm -rf ${spectrum_path}/server/lib/spectrum-server-config-rest-20.1.jar
rm -rf ${spectrum_path}/server/lib/spectrum-server-runtime-core-20.1.jar
rm -rf ${spectrum_path}/server/lib/spectrum-server-transaction-core-20.1.jar
rm -rf ${spectrum_path}/server/lib/spectrum-server-transaction-persist-common-20.1.jar
rm -rf ${spectrum_path}/server/lib/xmlbeans-3.1.0.jar
rm -rf ${spectrum_path}/server/lib/xmlsec-2.2.3.jar
tar -xvf $patch_tar_path/cdq20201s43.tar
# reinstall the Administration Utility to update the Command Line Interface (CLI) on every machine where it is currently installed.

# list down rls file in spectrum folder for verfication.
ls -lrt ${spectrum_path}/cdq20201*.rls

# End of script.
