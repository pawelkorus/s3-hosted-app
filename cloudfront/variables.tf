variable "project" {
    type = string
}

variable "domain" {
    type = string
}

variable "s3-id" {
    type = string
}

variable "spa-deployment" {
    type = object({
        enable = bool
    })
    description = "Configuration properties for single page applications"
    default = {
        enable = false
    }
}