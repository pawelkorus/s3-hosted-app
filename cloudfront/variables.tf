variable "project" {
    type = string
}

variable "domain" {
    type = string
}

variable "s3-id" {
    type = string
}

variable "redirect_not_found" {
    type        = bool
    description = "Whether to redirect 404 Not Found errors"
    default     = false
}


variable "spa_deployment" {
    type = object({
        enable = bool
    })
    description = "Configuration properties for single page applications"
    default = {
        enable = false
    }
}