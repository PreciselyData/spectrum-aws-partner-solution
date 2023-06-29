# Spectrum on AWS
This is a project done in collabortation with AWS to automate the deployment of Precisely's Spectrum application on AWS infrastructure.
- [Spectrum Application](#spectrum-application)
  - [Features](#features)
- [Architecture](#architecture)
  - [Single Tenet](#single-tenet)
- [Prerequisites](#prerequisites)
  - [Planning your deployment](#planning-your-deployment)
  - [AWS considerations](#aws-considerations)
- [Additional Resources](#additional-resources)

# Spectrum Application
  ## Features
# Architecture
  ## Single Tenet
  ![Single Tenet Architecture diagram](/images/spectrumSingleTenet.PNG)
# Prerequisites
  ## Planning your deployment
  At the moment, we only support Windows single tenet automated deployments. For clustered deployments, please reach out to Precisely directly.
  ## AWS considerations
  For the initial deployment, you'll want to make sure you have the following created before starting the deployment:
  
  A Keypair
  
  A VPC with a Subnet
  
  Security Groups within the VPC
  
# Additional Resources
Follow this link to additional documentation on Spectrum:
https://docs.precisely.com/docs/sftw/spectrum/22.1/en/webhelp/DocumentationDirectory/index.html
