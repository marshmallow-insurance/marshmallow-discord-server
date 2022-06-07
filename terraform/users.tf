resource "discord_member_roles" "heather_role" {
  user_id   = 715998859616190464
  server_id = discord_server.server.id
  role {
    role_id = discord_role.moderator.id
  }
}

resource "discord_role" "moderator" {
  server_id = discord_server.server.id
  name      = "Moderator"
}

module "add_charlie" {
  source             = "./modules/new-member"
  server_id          = discord_server.server.id
  username           = "Bspammer"
  user_discriminator = "9717"
  display_name       = "Charlie"
  welcome_channel_id = discord_text_channel.welcome.id
}