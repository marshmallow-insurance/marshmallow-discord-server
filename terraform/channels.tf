resource "discord_category_channel" "general" {
  name      = "general"
  server_id = discord_server.server.id
}

resource "discord_text_channel" "welcome" {
  name      = "welcome"
  server_id = discord_server.server.id
  position  = 0
  category  = discord_category_channel.general.id
}

resource "discord_text_channel" "hope-this-works" {
  name      = "testing_123"
  server_id = discord_server.server.id
  position  = 2
  category  = discord_category_channel.general.id
}
