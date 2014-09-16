require 'socket'

class Client

  def start(ip, port, username)
    loop do
      begin
        clientSession = TCPSocket.new(ip,port )

      rescue StandardError => bang
        puts "Error !! "
        puts bang
      else

        msg = gets
        clientSession.puts username + " : " + msg
      end

    end
  end

end
