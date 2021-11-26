local discordia = require('discordia')
local client = discordia.Client()

client:on('ready', function()
    local channel = client:getChannel('913329624824557600')
    local connection = channel:join()
    connection:playFFmpeg('music.mp3')
    print('Logged in as '.. client.user.username)
end)

client:on('messageCreate', function(message)
    if message.content == '=ping' then
        message.channel:send('Pong!')
    end
end)

client:on('messageCreate', function(message)
    if message.content == '=help' then
        message.channel:send('Hilfe :\n')
    end
end)

client:on('messageCreate', function(message)
    if message.content == '=version' then
        message.channel:send('v0.4')
    end
end)

client:on('messageCreate', function(message)
    if message.content == '=twitter' then
        message.channel:send('https://twitter.com/ingressboy')
    end
end)

client:on('messageCreate', function(message)
    if message.content == '=github' then
        message.channel:send('https://github.com/ingressboy/Missao-Lua')
    end
end)

client:on('messageCreate', function(message)
    if message.content == 'Moin' then
        message.channel:send('Moin!')
    end
end)

client:on('messageCreate', function(message)
    if message.content == 'Hallo' then
        message.channel:send('Hallo!')
    end
end)

client:run('Bot Token')
