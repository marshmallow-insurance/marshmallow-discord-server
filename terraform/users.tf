resource "discord_member_roles" "heather_role" {
  user_id   = 715998859616190464
  server_id = discord_server.server.id
  role {
    role_id = discord_role.moderator.id
  }
}

resource "discord_member_roles" "charlie_role" {
  user_id   = data.discord_member.charlie.id
  server_id = discord_server.server.id
  role {
    role_id = discord_role.moderator.id
  }
}

resource "discord_role" "moderator" {
  server_id = discord_server.server.id
  name      = "Moderator"
}

data "discord_member" "charlie" {
  server_id     = discord_server.server.id
  username      = "Bspammer"
  discriminator = "9717"
}