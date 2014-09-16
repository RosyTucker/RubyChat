require 'socket'

class Server

  def start(port)
    server = TCPServer.new port
    loop do
      Thread.start(server.accept) do |client|
          puts client.gets
          client.close
        end
      end
  end
end
