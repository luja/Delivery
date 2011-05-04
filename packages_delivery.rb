#packages_delivery.rb

require './packages_list.rb'
require './client_list.rb'

class Packages_delivery
    @clients
    @packages

    attr_reader :client_list
    attr_reader :packages

    def initialize()
        @client_list = []
        @packages = Packages_list.new()
    end


end
