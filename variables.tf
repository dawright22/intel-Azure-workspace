
variable "ARM_SUBSCRIPTION_ID" {
  description = "ARM_SUBSCRIPTION_ID"
  default     = ""
}

variable "ARM_TENANT_ID" {
  description = "ARM_TENANT_ID"
  default     = ""
}

variable "ARM_CLIENT_SECRET" {
  description = "ARM_CLIENT_SECRET"
  default     = ""
  sensitive   = true
}
variable "ARM_CLIENT_ID" {
  description = "ARM_CLIENT_ID"
  default     = ""

}

variable "appId" {
  description = "appId"
  default     = ""
  sensitive   = true
}

variable "password" {
  description = "APPID pasword"
  default     = ""
  sensitive   = true
}

variable "oauth_token" {
  description = "Oauth token"
  default     = ""
  sensitive   = true
}