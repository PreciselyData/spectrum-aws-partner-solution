# Spectrum Server for AWS Deployment Guide 
This guide provides detailed instructions for deploying a single tenent Spectrum server on AWS infrastructure.
# Deployment steps
1) Sign in to your AWS account, and launch this Partner Solution. The AWS CloudFormation console opens with a prepopulated template.

2) Choose the correct AWS Region, and then choose Next.

3) On the Create stack page, keep the default setting for the template URL, and then choose Next.

4) On the Specify stack details page, change the stack name if needed. Review the parameters for the template. Provide values for the parameters that require input. For all other parameters, review the default settings and customize them as necessary. When you finish reviewing and customizing the parameters, choose Next.

5) On the Configure stack options page, you can specify tags (key-value pairs) for resources in your stack and set advanced options. When you finish, choose Next.

6) On the Review page, review and confirm the template settings. (I NEED TO ADD THIS TO OUR TEMPLATES) Under Capabilities, select all of the check boxes to acknowledge that the template creates AWS Identity and Access Management (IAM) resources that might require the ability to automatically expand macros.

7) Choose Create stack. The stack takes about 2 minutes to deploy.

8) Monitor the stack’s status, and when the status is CREATE_COMPLETE, the Spectrum deployment is ready.

9) To view the created resources, choose the Outputs tab. (CREATE BETTER OUTPUTS, IP ADDRESS, INSTANCE NAME, INSTANCE SIZE ETC0

# Postdeployment steps
## Testing the deployment
When the AWS CloudFormation template has successfully created the stack. Go to your Instances console in AWS, or view the Outputs from the CloudFormation stack and find your IP address for the Spectrum deployment EC2 instance. Remote into the machine using your keypair that you selected during the deployment. Once you remote in, you'll notice in the Windows notification bar that Spectrum Server is starting. Once that's done starting, you can access the Management Console via Google Chrome. 

# Troubleshooting

# Customer responsibility
After you deploy a Partner Solution, confirm that your resources and services are updated and configured—including any required patches—to meet your security and other needs. For more information, refer to the [Shared Responsibility Model](https://aws.amazon.com/compliance/shared-responsibility-model/).

# Feedback
To submit feature ideas and report bugs, use the Issues section of the [GitHub repository](LINK-TO-PRECISELY-GITHUB) for this Partner Solution. To submit code, refer to the [Partner Solution Contributor’s Guide](https://aws-quickstart.github.io/). To submit feedback on this deployment guide, use the following GitHub links:

[Grammar or spelling](LINK-TO-PRECISELY-GITHUB)

[Broken link](LINK-TO-PRECISELY-GITHUB)

[Inaccurate content](LINK-TO-PRECISELY-GITHUB)

[Display or design](LINK-TO-PRECISELY-GITHUB)

# Notices
This document is provided for informational purposes only. It represents current AWS product offerings and practices as of the date of issue of this document, which are subject to change without notice. Customers are responsible for making their own independent assessment of the information in this document and any use of AWS products or services, each of which is provided "as is" without warranty of any kind, whether expressed or implied. This document does not create any warranties, representations, contractual commitments, conditions, or assurances from AWS, its affiliates, suppliers, or licensors. The responsibilities and liabilities of AWS to its customers are controlled by AWS agreements, and this document is not part of, nor does it modify, any agreement between AWS and its customers.

The software included with this paper is licensed under the Apache License, version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at https://aws.amazon.com/apache2.0/ or in the accompanying "license" file. This code is distributed on an "as is" basis, without warranties or conditions of any kind, either expressed or implied. Refer to the License for specific language governing permissions and limitations.
