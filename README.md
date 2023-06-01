# Spectrum on AWS
This is a project done in collabortation with AWS to automate the deployment of Precisely's Spectrum application on AWS infrastructure.
- Spectrum Application
  - Features
- Architecture
  - Single Tenet
  - Clustered Deployment
- Prerequisites
  - Planning your deployment
  - AWS considerations
- Administation Utility
-   Connecting to your Spectrum Server
- Performance
  - Performance Tuning
  - Monitoring Performance
- Monitoring
- Backup and Restore
  - Scheduling backups
  - Manual backups
  - Restoring a Server
  - Restore a Spectrum repo backup


















There are 4 components to a Spectrum deployment:
  1) Deploying the initial application
  2) Adding Modules and Data to the deployment
  3) Patching the Spectrum deployment
  4) Updating the Module data when necessary
# Prerequesites
Before starting to deploy your EC2 with Spectrum, there's a few important considerations to make
  1) 
# Deploying the initial application
Use an AWS CloudFormation tempate to create a base Spectrum 22.1 deployment on a single EC2 instance. This is the minimal all-in-one configuration, where all the components are installed on a single instance. 
# Adding Modules and Data to the deployment

# Patching the Spectrum deployment

# Updating the Module data when necessary