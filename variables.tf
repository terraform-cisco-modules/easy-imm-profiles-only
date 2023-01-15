#______________________________________________
#
# Intersight Provider Settings
#______________________________________________

variable "apikey" {
  description = "Intersight API Key."
  sensitive   = true
  type        = string
}

variable "endpoint" {
  default     = "intersight.com"
  description = "Intersight Endpoint Hostname."
  type        = string
}

variable "secretkey" {
  default     = ""
  description = "Intersight Secret Key."
  sensitive   = true
  type        = string
}

variable "secretkeyfile" {
  default     = "blah.txt"
  description = "Intersight Secret Key File Location."
  sensitive   = true
  type        = string
}
