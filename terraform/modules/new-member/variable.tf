variable "server_id" {
  type        = string
  description = "Server to apply the changes"
}

variable "username" {
  type        = string
  description = "Discord username adding to the server"
}

variable "display_name" {
  type        = string
  description = "Name of the person behind the user"
}

variable "user_discriminator" {
  type        = string
  description = "Unique discriminator of a user (e.g. 0000). Do not include hash."
}

variable "welcome_channel_id" {
  type        = string
  description = "ID for the channel to post the users welcome message"
}

variable "user_role_id" {
  type        = string
  description = "ID for the role to give the the new user"
}