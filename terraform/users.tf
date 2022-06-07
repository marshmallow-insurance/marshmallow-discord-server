resource "discord_role" "moderator" {
  server_id = discord_server.server.id
  name      = "Moderator"
  position  = 0
  color     = data.discord_color.terraform_purple.dec
}

resource "discord_role" "basic_user_role" {
  server_id   = discord_server.server.id
  name        = "Basic User"
  permissions = data.discord_permission.basic_user.allow_bits
  color       = data.discord_color.marshmallow_pink.dec
  hoist       = true
  mentionable = true
  position    = 1
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

module "add_charlie" {
  source             = "./modules/new-member"
  server_id          = discord_server.server.id
  username           = "Bspammer"
  user_discriminator = "9717"
  display_name       = "Charlie"
  welcome_channel_id = discord_text_channel.welcome.id
  user_role_id       = discord_role.basic_user_role.id
}

module "add_sven" {
  source             = "./modules/new-member"
  server_id          = discord_server.server.id
  username           = "Uncle_Shween"
  user_discriminator = "9475"
  display_name       = "Sven"
  welcome_channel_id = discord_text_channel.welcome.id
  user_role_id       = discord_role.basic_user_role.id
}

module "add_heather" {
  source             = "./modules/new-member"
  server_id          = discord_server.server.id
  username           = "hbwhyte"
  user_discriminator = "8473"
  display_name       = "Heather"
  welcome_channel_id = discord_text_channel.welcome.id
  user_role_id       = discord_role.moderator.id
}
