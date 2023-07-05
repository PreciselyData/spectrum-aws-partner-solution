# Configuring your Spectrum deployment
After you've completed your Spectrum deployment, you'll want to come to these scripts to install modules, patch your deployment and update the data on the modules (when applicable).
## Module Options and Capabilities
There's currently 3 Spectrum modules available, with different regional datasets. 
1) Global Address Validation - United State and International datasets.
2) Global Geocoding Module - United States and International datasets.
3) Universal Addressing Module - United States only

For detailed information on each module concept, [click here](https://docs.precisely.com/docs/sftw/spectrum/22.1/en/webhelp/DocumentationDirectory/index.html)
### Global Address Validation - United State and International datasets.
Global Address Validation Module is available with United States and International datasets.
The Global Address Validation Module allows the user to utilize the following services:
- Global Address Parser
- Global Address Validation
- US Database Lookup

[Click here](https://docs.precisely.com/docs/sftw/spectrum/22.1/en/webhelp/WebServicesGuide/GlobalAddressing/source/GlobalAddressValidation/Component_GlobalAddressValidation.html) for Documentation for these services.
### Global Geocoding Module - United States and International datasets.
Global Geocoding Module is available with United States and International datasets.
The Global Geocoding Module allows the user to utilize the following services:
- Global Geocode
- Global Key Lookup
- Global Reverse Geocode

[Click here](https://docs.precisely.com/docs/sftw/spectrum/22.1/en/webhelp/GlobalGeocodingGuide-REST/GlobalGeocodingGuide/source/Introduction/ws_Intro.html) for Documentation for these services.
### Universal Addressing Module - United States only
Universal Addressing Module is available with United States datasets only at the moment. For additional datasets, please contact Precisely's Customer Service.
The Universal Addressing Module allows the user to utilize the following services:
- Get Candidate Addresses
- Get City State Province
- Get Postal Codes
- Validate Address

[Click here](https://docs.precisely.com/docs/sftw/spectrum/22.1/en/webhelp/WebServicesGuide/UNC/source/AutoCompleteLoqate/Component_AutoCompleteLoqate-1.html) for Documentation for these services.
## Adding Modules and Data to the deployment
Best practice is to add your desired modules one at a time. Make sure you note you note your Spectrum Deployment's Name in the EC2 window before you start. 
1) To install a module, decided on the module and data context you would like to appy to your Spectrum deployment and click Launch Stack. 
This opens AWS Systems Manager Run Command service which will run an install document on your instance. 

2) Leave the Command document as default, and under Target Selection, select Choose instances manually. Check the box next to your Spectrum Deployment instance.

3) Under Output options, you can select to Enable an S3 bucket for the log files. If you choose this, create or select a S3 bucket from the dropdown menu. You can also run this without logging if desired. 

4) Leave SNS notifications and AWS command line interface command as they are, and click Run.

5) The document will now start to install the selected module on your Spectrum instance. You can see the progress on the Overall status and you can also see additional details by clicking on the Instance ID in the Targets and outputs section.

6) Once the Overall Status says Success, you can now remote into your Spectrum instance and apply the Spectrum license you received from Precisely Customer Support.

## Patching the Spectrum deployment
Patching your Spectrum deployment is vital to stay up to date and compliant with the software requirements. Below is the process to do so:
1) Click the Launch Stack button next to the Spectrum Patching option. This opens AWS Systems Manager Run Command service which will run a patch install document on your instance.

2) Leave the Command document as default, and under Command Parameters, select the modules that you have installed on your Spectrum instance. This is very important, since it'll only install patches pertaining to your installed modules.

3) Under Target Selection, select Choose instances manually. Check the box next to your Spectrum Deployment instance.

4) Under Output options, you can select to Enable an S3 bucket for the log files. If you choose this, create or select a S3 bucket from the dropdown menu. You can also run this without logging if desired. 

5) Leave SNS notifications and AWS command line interface command as they are, and click Run.

6) The document will now start to install the patches on your Spectrum instance. You can see the progress on the Overall status and you can also see additional details by clicking on the Instance ID in the Targets and outputs section.

7) Once the Overall Status says Success, you can now remote into your Spectrum instance and apply the Spectrum license you received from Precisely Customer Support.

## Updating the Module data when necessary
Precisely releases monthly dataset updates for the following modules: Universal Addressing Module & Global Addressing Validation. Global Geocoding receives quarterly dataset updates. If you find yourself needing to update the data on your Spectrum deployment, you'll update the data for each module individually. To do this, follow the below instructions.

1) To update the datasets for a module click Launch Stack next to the corresponding module you would like to update. 
This opens AWS Systems Manager Run Command service which will run an update document on your instance. 

2) Leave the Command document as default, and under Target Selection, select Choose instances manually. Check the box next to your Spectrum Deployment instance.

3) Under Output options, you can select to Enable an S3 bucket for the log files. If you choose this, create or select a S3 bucket from the dropdown menu. You can also run this without logging if desired. 

4) Leave SNS notifications and AWS command line interface command as they are, and click Run.

5) The document will now start to update the data for the selected module on your Spectrum instance. You can see the progress on the Overall status and you can also see additional details by clicking on the Instance ID in the Targets and outputs section.

6) Once the Overall Status says Success, you can now remote into your Spectrum instance and apply the Spectrum license you received from Precisely Customer Support.