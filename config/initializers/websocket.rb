require 'eventmachine'
require 'em-websocket'
Thread.new() do
  EventMachine.run do
      @clients = []
      EM::WebSocket.start(:host => "0.0.0.0", :port => 4200) do |ws|
          puts "port 4200"
          ws.onopen do |handshake|
            @clients.push(ws)
            #puts ws
            ws.send "Connected to "
          end

          ws.onclose do
            ws.send "Closed."
            @clients.delete ws
          end

          ws.onmessage do |msg|
            puts "Received Message: #{msg}"
            @clients.each do |socket|
              socket.send msg
            end
          end

          ws.onerror do |error|
            if error.kind_of?(EM::WebSocket::WebSocketError)
              puts "Socket Error"
            end
          end
      end

      puts "Websocket started"
  end
end