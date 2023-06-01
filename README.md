# Spectrum on AWS
This is a project done in collabortation with AWS to automate the deployment of Precisely's Spectrum application on AWS infrastructure.
- [Spectrum Application](#spectrum-application)
  - [Features](#features)
- [Architecture](#architecture)
  - [Single Tenet](#single-tenet)
  - [Clustered Deployment](#clustered-deployment)
- [Prerequisites](#prerequisites)
  - [Planning your deployment](#planning-your-deployment)
  - [AWS considerations](#aws-considerations)
- [Administation Utility](#administration-utility)
-   [Connecting to your Spectrum Server](#connecting-to-your-spectrum-server)
- [Performance](#performance)
  - [Performance Tuning](#performance-tuning)
  - [Monitoring Performance with the Admin Utility](#monitoring-performance-with-the-admin-utility)
  - [Monitoring Performance with JMX](#monitoring-performance-with-jmx)
- [Monitoring](#monitoring)
  - [Viewing server status](#viewing-server-status)
- [Backup and Restore](#backup-and-restore)
  - [Scheduling backups](#scheduling-backups)
  - [Manual backups](#manual-backups)
  - [Restoring a Server](#restoring-a-server)
  - [Restore a Spectrum repo backup](#restore-a-spectrum-repo-server)
# Spectrum Application
  ## Features
# Architecture
  ## Single Tenet
  ## Clustered Deployment
# Prerequisites
  ## Planning your deployment
  ## AWS considerations
# Administration Utility
  ## Connecting to your Spectrum Server
# Performance
  ## Performance Tuning
  ## Monitoring Performance with the Admin Utility
  The Administration Utility is a command line tool that provides access to many administrative functions, including a performance monitor. When enabled, the performance monitor writes performance data to a log file each time a dataflow is run and includes performance data for each stage in the dataflow.

Open the Administration Utility.

Type the following command:

performancemonitor enabled set --e True --d DataflowName

Where DataflowName is the name of the job or service you want to monitor.

Performance monitoring is now enabled for the dataflow you specified. When the dataflow runs, performance information will be written to the performance log.

  ## Monitoring Performance with JMX
 The Spectrum JMX console is a browser-enabled tool that provides a performance monitoring tool that records performance statistics for each stage in a dataflow.

Open a web browser and go to http://server:port/jmx-console

Where:

server is the IP address or host name of your Spectrum Technology Platform server.

port is the HTTP port used by Spectrum Technology Platform. The default is 8080.

Log in using the admin account.

Under Domain: com.pb.spectrum.platform.performance, click com.pb.spectrum.platform.performance:service=PerformanceMonitorManager.

Click the Invoke button next to enable.

Click Return to MBean View to go back to the PerformanceMonitorManager screen.

Performance monitoring is now enabled. When a dataflow runs, the performance statistics will display at the top of the PerformanceMonitorManager screen. Note the following:

You must refresh the screen to see updates.

To reset the counters, click the Invoke button next to reset.

If you stop the Spectrum Technology Platform server, performance monitoring will be turned off. You will have to turn it back on when you start the server again.

# Monitoring
  ## Viewing server status
Use the URL-based server status check to quickly view overall status, such as memory use and CPU availability. This URL-based check provides a low-overhead and non-password protected way to check that your server is running and accessible.
 
In a web browser, specify one of these URLs:
https//server:port/dcg/status or http//server:port/dcg/status

Where:

  server is the server name or IP address of your Spectrum Technology Platform server.
  
  port is the HTTP or HTTPS port used by Spectrum Technology Platform.

Note:
By default, the server port is 8080 for HTTP and 8443 for HTTPS.

View the current status.
### address
URL for the server you are viewing
### cpuUsagePercentage
Portion of overall CPU allocation currently used, in decimal format
### physicalMemoryUseagePercentage
Portion of memory currently used, in decimal format
### heapMemoryUsagePercentage
Amount of runtime memory currently used, in decimal format
### diskUsagePercentage
Amount of the overall disk space used, in decimal format

# Backup and Restore
  ## Scheduling backups
  ## Manual backups
  ## Restoring a Server
  ## Restore a Spectrum repo backup

















There are 4 components to a Spectrum deployment:
  1) Deploying the initial application
  2) Adding Modules and Data to the deployment
  3) Patching the Spectrum deployment
  4) Updating the Module data when necessary
# Prerequesites
Before starting to deploy your EC2 with Spectrum, there's a few important considerations to make
  1) 


