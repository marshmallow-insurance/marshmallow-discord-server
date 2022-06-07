terraform {
  required_providers {
    discord = {
      source  = "aequasi/discord"
      version = "0.0.4"
    }
  }

  required_version = ">= 1.0"
}

data "discord_member" "user_by_username" {
  server_id     = var.server_id
  username      = var.username
  discriminator = var.user_discriminator
}

resource "discord_member_roles" "basic_user" {
  user_id   = data.discord_member.user_by_username.id
  server_id = var.server_id
  role {
    role_id = var.user_role_id
  }
}

resource "discord_message" "welcome_message" {
  channel_id = var.welcome_channel_id
  embed {
    title = "Welcome to the club ${var.display_name}!"
    fields {
      name   = "Username:"
      value  = var.username
      inline = false
    }
    footer {
      text = "Say hello and have a look around!"
    }
  }
}

