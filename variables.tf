variable "app-name" {
  type = string
}

variable "app-domain" {
  type = string
}

variable "bucket-name" {
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