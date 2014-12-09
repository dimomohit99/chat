class ChatBoxController < ApplicationController
	def index
		
		render "view"
	end
	def create
		
	end
	def edit
		
	end
	def view
		#@handshake = WebSocket::Handshake::Server.new
		puts "Hello"
		#puts @handshake.to_s
		render "view"
	end
end
