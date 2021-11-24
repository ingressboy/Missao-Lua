local discordia = require('discordia')
local client = discordia.Client{
	logFile = 'mybot.log',
	cacheAllMembers = true,
}

client:on('ready', function()
	print('Logged in as '.. client.user.username)
end)

client:on('messageCreate', function(message)
	if message.content == '=ping' then
		message.channel:send('Pong!')
	end
end)

client:on('messageCreate', function(message)
	if message.content == '=help' then
		message.channel:send('Hilfe :')
	end
end)

client:on('messageCreate', function(message)
	if message.content == '=version' then
		message.channel:send('v0.3')
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

client:run('Bot INSERT_TOKEN_HERE')
