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

5) The document will now start to install the selected module on your Spectrum instance. You can see the progress on the WHAT MENU? and you can also see additional details by clicking on the process number.

6) Once the PROGRESS FIELD? says Completed, you can now remote into your Spectrum instance and apply the Spectrum license you received from Precisely Customer Support.

## Patching the Spectrum deployment

## Updating the Module data when necessary
