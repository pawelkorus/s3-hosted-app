terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = ">= 5.0.0"
            configuration_aliases = [ aws.cert ]
        }
    }
}

module "s3-app" {
    source      = "./s3-app"
    bucket-name = var.bucket-name
}

module "cloudfront" {
    source     = "./cloudfront"
    providers  = {
        aws.cert = aws.cert
    }
    project     = var.app-name
    domain      = var.app-domain
    s3-id       = module.s3-app.bucket-id
}