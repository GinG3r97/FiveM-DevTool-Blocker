local webhook = 'https://discord.com/api/webhooks/960046471854567454/lSRmNW57Np-TzG_cAHMzu1_nd0NjSm6mSjWHp7W38vrFlfPWYryaORkWdDAgHNiD6BLN'


RegisterServerEvent('call:gingerbread')
AddEventHandler('call:gingerbread', function()
    sendToDiscord("Ginger Bread Reporting!", GetPlayerName(source).." tried to use nui_devtools at "..os.time())
    DropPlayer(source, 'Hmm, Nice try :)')
end)

function sendToDiscord(name, args, color)
    local connect = {
          {
              ["color"] = 16711680,
              ["title"] = "".. name .."",
              ["description"] = args,
              ["footer"] = {
              ["text"] = "Made by Ginger Bread",
              },
          }
      }
    PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = "Ginger Bread Report", embeds = connect, avatar_url = "https://cdn.discordapp.com/attachments/960051728277995520/960052105903755284/s-l1600.jpg"}), { ['Content-Type'] = 'application/json' })
end
