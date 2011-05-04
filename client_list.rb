#client_list.rb

require './client.rb'

class Client_list
    @client
    attr_reader :client

    def initialize()
       @client = []
    end
    def add_client(snd)
        client = Client.new()
        @client << client
    end
end
