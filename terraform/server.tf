resource "discord_server" "server" {
  name                    = "Marshmallow!"
  region                  = "us-south"
  explicit_content_filter = 1
}
