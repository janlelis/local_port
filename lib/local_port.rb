require 'socket'
require 'timeout'

module LocalPort
  VERSION = '0.1.0'

  def self.free?(port, seconds=1)
    Timeout::timeout(seconds) do
      begin
        TCPSocket.new("127.0.0.1", port).close
        true
      rescue Errno::ECONNREFUSED, Errno::EHOSTUNREACH
        false
      end
    end
  rescue Timeout::Error
    false
  end

  def self.next_free_one(port)
    port += 1 while free?(port)
    port
  end
end

