#packages_delivery.rb

require './packages_list.rb'
require './client_list.rb'
require './package.rb'
require './client.rb'
class Packages_delivery
  @clients
  @packages
  attr_reader :clients
  attr_reader :packages

  def initialize()
    @clients = Client_list.new
    @packages = Packages_list.new
  end
  def register_new_client(name, surename, address)
    @clients.add_client(Client.new(name, surename, address))
  end    
  def register_new_package(sender, receiver, weight)
    package = Package.new(sender, receiver, weight)
    @packages.add_package(package)
  end
end
