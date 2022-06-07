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
    role_id = discord_role.basic_user_role.id
  }
}

resource "discord_role" "basic_user_role" {
  server_id   = var.server_id
  name        = "Basic User"
  permissions = data.discord_permission.basic_user.allow_bits
  color       = data.discord_color.marshmallow_pink.dec
  hoist       = true
  mentionable = true
}


resource "discord_message" "welcome_message" {
  channel_id = var.welcome_channel_id
  embed {
    title = "Welcome to the club ${var.display_name}!"
    fields {
      name = "Username"
      value = var.username
      inline = false
    }
    footer {
      text = "Say hello and have a look around!"
    }
  }
}

data "discord_permission" "basic_user" {
  view_channel        = "allow"
  send_messages       = "allow"
  use_external_emojis = "allow"
  use_vad             = "deny"
  priority_speaker    = "deny"
}

data "discord_color" "marshmallow_pink" {
  hex = "#ff4e75"
}

