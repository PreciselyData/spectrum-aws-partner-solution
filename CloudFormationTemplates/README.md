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
