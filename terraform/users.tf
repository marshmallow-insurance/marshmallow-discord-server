module "add_jodu#6606" {
  source             = "./modules/new-member"
  server_id          = discord_server.server.id
  username           = "jodu"
  user_discriminator = "6606"
  display_name       = "jodu"
  welcome_channel_id = discord_text_channel.welcome.id
  user_role_id       = discord_role.basic_user_role.id
}