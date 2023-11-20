# s3-hosted-app

This terraform module creates aws resources that allow to host frontend app using s3.

It will configure following resources:
* s3 bucket to store frontend application files
* ssl certificate for application custom domain
* cloudfront distribution to provide access to application via custom domain