# Marshmallow meetup discord shenanigans

This project is designed to be used by the attendees at the first ever Marshmallow meetup developer event. The repo will
give a brief introduction to terraform through the use of a discord module that allows developers to edit the
Marshmallow discord server.

## Setup

Below are the steps you will need to install the project and make your first commit.

### Step one: Join the discord

The first thing you will need to do is join our new Marshmallow discord server. If you do not have a discord account, you
can create one here:

- https://discord.com/register

Once you have an account, accept the invite link below:

- https://discord.gg/74wYXMs6WG

### Step two: Add yourself as a basic user

In this step, you will set yourself a new role as a basic user. First, you will need your user details.

If you navigate to discord and click on yourself in the channel, then you will be able to get your username and number.
For example **Sven#9475**

Once you have this information, navigate to `/terraform/user.tf ` and add the following:

```terraform
module "add_<first_name>" {
  source             = "./modules/new-member"
  server_id          = discord_server.server.id
  username           = "<discord_username_without_number>"
  user_discriminator = "<username_numer>"
  display_name       = "<Any preffered display name>"
  welcome_channel_id = discord_text_channel.welcome.id
  user_role_id       = discord_role.basic_user_role.id
}
```

Example:

```terraform
module "add_sven" {
  source             = "./modules/new-member"
  server_id          = discord_server.server.id
  username           = "Uncle_Shween"
  user_discriminator = "9475"
  display_name       = "Sven"
  welcome_channel_id = discord_text_channel.welcome.id
  user_role_id       = discord_role.basic_user_role.id
}
```

### Step three: Apply the change
Create a pull request on the repo. This will create a plan message on the PR automatically through GitHub actions.

Once approved and merged, you should see the change on the server!

## Congratulations, you have now made a terraform change.

### Play around:

You can now explore the service and then try other things, for example, making a channel or setting new roles, which you can
find in .tf files with the same name. Alternatively, you can find other commands in the link below:

-https://registry.terraform.io/providers/aequasi/discord/latest/docs/resources
