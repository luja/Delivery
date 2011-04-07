#senders_list.rb

require './client.rb'

class Senders_list
    @senders
    attr_reader :senders

    def initialize()
       @senders = []
    end
    def add_sender(snd)
        sender = Client.new()
        @senders << sender
    end
end

