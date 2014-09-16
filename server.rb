require 'socket'

class Server

  def start(port)
    server = TCPServer.new port
    loop do
      Thread.start(server.accept) do |client|
          msg = client.gets
          puts msg
          system("say 'new message from #{msg}'")
          client.close
        end
      end
  end
end
