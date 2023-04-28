#------------------------------------------------------------------------
# Variables
#------------------------------------------------------------------------

variable "resource_group_name" {
  type        = string
  description = "The resource group name into which to deploy resources"
}


variable "resource_group_location" {
  type        = string
  description = "The location of the resource group"
  default     = "Australia East"
}

variable "teams" {
  type = map(string)
}
