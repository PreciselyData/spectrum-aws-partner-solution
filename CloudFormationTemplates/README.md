# Spectrum Server for AWS Deployment Guide 
This guide provides detailed instructions for deploying a single tenent Spectrum server on AWS infrastructure.
# Deployment steps
1) Sign in to your AWS account, and launch this Partner Solution. The AWS CloudFormation console opens with a prepopulated template.

2) On the Create stack page, keep the default setting for the template URL, and then choose Next.

3) On the Specify stack details page, change the stack name if needed. Review the parameters for the template. Provide values for the parameters that require input. For all other parameters, review the default settings and customize them as necessary. When you finish reviewing and customizing the parameters, choose Next.

4) On the Configure stack options page, you can specify tags (key-value pairs) for resources in your stack and set advanced options. When you finish, choose Next.

5) On the Review page, review and confirm the template settings. Under Capabilities, select all of the check boxes to acknowledge that the template creates AWS Identity and Access Management (IAM) resources that are needed for the module install.

6) Choose Create stack. The stack takes about 2 minutes to deploy.

7) Monitor the stack’s status, and when the status is CREATE_COMPLETE, the Spectrum deployment is ready.

8) To view the created resources, choose the Outputs tab.

# Postdeployment steps
## Testing the deployment
When the AWS CloudFormation template has successfully created the stack. Go to your Instances console in AWS, or view the Outputs from the CloudFormation stack and find your IP address for the Spectrum deployment EC2 instance. Remote into the machine using your keypair that you selected during the deployment. Once you remote in, you'll notice in the Windows notification bar that Spectrum Server is starting. Once that's done starting, you can access the Management Console via a bookmark within Google Chrome. 

# Troubleshooting

For assistance, please reach out to Precisely support.

# Customer responsibility
After you deploy a Partner Solution, confirm that your resources and services are updated and configured—including any required patches—to meet your security and other needs. For more information, refer to the [Shared Responsibility Model](https://aws.amazon.com/compliance/shared-responsibility-model/).

# Feedback
To submit feature ideas and report bugs, use the Issues section of the GitHub repository for this Partner Solution.
