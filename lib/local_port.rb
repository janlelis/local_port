require 'socket'

module LocalPort
  VERSION = '1.0.0'

  def self.free?(port, seconds=1)
    Socket.tcp("127.0.0.1", port, connect_timeout: seconds)
    false
  rescue Errno::ECONNREFUSED, Errno::EHOSTUNREACH
    true
  end

  def self.next_free_one(port)
    port += 1 until free?(port)
    port
  end
end

