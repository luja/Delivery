#packages_delivery.rb

require './packages_list.rb'
require './senders_list.rb'
require './receivers_list.rb'

class Packages_delivery
    @receivers_list
    @senders_list
    @packages_list

    attr_reader :receivers_list
    attr_reader :senders_list
    attr_reader :packages_list

    def initialize()
        @receivers_list = []
        @senders_list = []
        @packages_list = []
    end


end
