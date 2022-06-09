module "add_jodu" {
  source             = "./modules/new-member"
  server_id          = discord_server.server.id
  username           = "freedom"
  user_discriminator = "6606"
  display_name       = "freedom_chuks"
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

module "add_Thelma" {
  source             = "./modules/new-member"
  server_id          = discord_server.server.id
  username           = "thelmaandherls"
  user_discriminator = "9330"
  display_name       = "Thelmz"
  welcome_channel_id = discord_text_channel.welcome.id
  user_role_id       = discord_role.basic_user_role.id
}
  resource "discord_member_roles" "basic_user" {
  user_id   = module.add_Thelma.user_id
  server_id = discord_server.server.id
  role {
    role_id = discord_role.Awesomeness.id
  }
}

  
module "add_kevwe" {
  source             = "./modules/new-member"
  server_id          = discord_server.server.id
  username           = "kuwotu"
  user_discriminator = "2211"
  display_name       = "Kevwe"
  welcome_channel_id = discord_text_channel.welcome.id
  user_role_id       = discord_role.basic_user_role.id
}  

module "add_danny" {
  source             = "./modules/new-member"
  server_id          = discord_server.server.id
  username           = "Executioner"
  user_discriminator = "7363"
  display_name       = "Daniel"
  welcome_channel_id = discord_text_channel.welcome.id
  user_role_id       = discord_role.basic_user_role.id
}
