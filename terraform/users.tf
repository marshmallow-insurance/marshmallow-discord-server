module "add_jodu" {
  source             = "./modules/new-member"
  server_id          = discord_server.server.id
  username           = "jodu"
  user_discriminator = "6606"
  display_name       = "jodu"
  welcome_channel_id = discord_text_channel.welcome.id
  user_role_id       = discord_role.basic_user_role.id
}

module "add_xenofon" {
  source             = "./modules/new-member"
  server_id          = discord_server.server.id
  username           = "Adepali"
  user_discriminator = "3252"
  display_name       = "Xenofon"
  welcome_channel_id = discord_text_channel.welcome.id
  user_role_id       = discord_role.basic_user_role.id
}

module "add_rudi" {
  source             = "./modules/new-member"
  server_id          = discord_server.server.id
  username           = "Rudi"
  user_discriminator = "5243"
  display_name       = "Rudi"
  welcome_channel_id = discord_text_channel.welcome.id
  user_role_id       = discord_role.basic_user_role.id
}

  module "add_rudi" {
  source             = "./modules/new-member"
  server_id          = discord_server.server.id
  username           = "Danny"
  user_discriminator = "2020"
  display_name       = "Daniel"
  welcome_channel_id = discord_text_channel.welcome.id
  user_role_id       = discord_role.basic_user_role.id
}

