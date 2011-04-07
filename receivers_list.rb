#receivers_list.rb

require './client.rb'

class Receivers_list
    @receivers
    attr_reader :receivers

    def initialize()
       @receivers = []
    end
    def add_receiver(snd)
        receiver = Client.new()
        @receivers << receiver
    end
end
