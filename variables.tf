
variable "ARM_SUBSCRIPTION_ID" {
  description = "ARM_SUBSCRIPTION_ID"
  value       = ""
}

variable "ARM_TENANT_ID" {
  description = "ARM_TENANT_ID"
  value       = ""
}

variable "ARM_CLIENT_SECRET" {
  description = "ARM_CLIENT_SECRET"
  value       = ""
  sensitive   = true
}
variable "ARM_CLIENT_ID" {
  description = "ARM_CLIENT_ID"
  value       = ""

}

variable "appId" {
  description = "appId"
  value       = ""
  sensitive   = true
}

variable "password" {
  description = "APPID pasword"
  value       = ""
  sensitive   = true
}

variable "oauth_token_id" {
  description = "Oauth token"
  value       = ""
  sensitive   = true
}