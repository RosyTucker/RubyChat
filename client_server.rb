require_relative 'client'
require_relative 'server'

Thread. new{
  server = Server. new
  server.start(2008)
}

client = Client. new
client.start("eurtucker", 2008, "Rosy")