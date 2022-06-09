resource "discord_role" "moderator" {
  server_id = discord_server.server.id
  name      = "Moderator"
  position  = 0
  color     = data.discord_color.terraform_purple.dec
  lifecycle {
    ignore_changes = [position]
  }
}
resource "discord_role" "Awesomeness" {
  server_id = discord_server.server.id
  name      = "Awesomeness"
  position  = 1
  color     = data.discord_color.terraform_colourful.dec
  hoist       = true
  mentionable = true
  lifecycle {
    ignore_changes = [position]
  }
}
resource "discord_role" "basic_user_role" {
  server_id   = discord_server.server.id
  name        = "Basic User"
  permissions = data.discord_permission.basic_user.allow_bits
  color       = data.discord_color.marshmallow_pink.dec
  hoist       = true
  mentionable = true
  position    = 2
  lifecycle {
    ignore_changes = [position]
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

data "discord_color" "terraform_purple" {
  hex = "#8040c9"
}

