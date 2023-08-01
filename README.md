# Spectrum on AWS
This is a project done in collabortation with AWS to automate the deployment of Precisely's Spectrum application on AWS infrastructure.
- [Spectrum Application](#spectrum-application)
  - [Features](#features)
- [Architecture](#architecture)
  - [Single Tenet](#single-tenet)
- [Prerequisites](#prerequisites)
  - [Planning your deployment](#planning-your-deployment)
  - [AWS considerations](#aws-considerations)
- [Customizing your deployment](#customizing-your-deployment)
- [Additional Resources](#additional-resources)
- [Use of Scripts](#use-of-scripts)

# Spectrum Application
  ## Features
  The Spectrum Technology Platform is a solution that improves the completeness, validity, consistency, timeliness, and accuracy of your data through data standardisation, verification and enhancement. Spectrum uses a service-oriented architecture to ensure consistency in all operations. The Spectrum Technology Platform includes both batch and transactional systems for any implementation. The scalable architecture leverages distributed systems and multiple processors to support millions of transactions per hour satisfying the demands of the high volume data processing.
 
  Rules-based engines and user-defined functions provide for flexibility and ease of use. Spectrum Technology Platform is a software and reference data solution delivered through a number of modules. These modules provide different functions, such as address validation, geocoding, routing, location intelligence and advanced parsing, among others. 

# Architecture
  ## Single Tenet
  ![Single Tenet Architecture diagram](/images/spectrumSingleTenet.PNG)
# Prerequisites
  ## Planning your deployment
  At the moment, we only support Windows single tenet automated deployments. For clustered deployments, please reach out to Precisely directly.
  ## AWS considerations
  For the initial deployment, you'll want to make sure you have the following created before starting the deployment:
  
  1) A Keypair
  
  2) A VPC with a Subnet
  
  3) Security Groups within the VPC

  Once you have these created, make note of them as you'll need them during the deployment.
# Customizing your deployment
Once your Spectrum deployment is finished, please reach out to [Spectrum trial team](mailto:spectrum_trial@precisely.com) for your 15 day trial license, access to the automation scripts to add modules and data for your deployment. 
# Additional Resources
Follow this link to additional documentation on Spectrum:
https://docs.precisely.com/docs/sftw/spectrum/22.1/en/webhelp/DocumentationDirectory/index.html
# Use of Scripts
The scripts shared at this location are for use by licensed users of Precisely's Spectrum software.  Use is governed by the Precisely Products and Services EULA found here:  https://www.precisely.com/EULA
