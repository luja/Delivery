#packages_delivery.rb

require './packages_list.rb'
require './client_list.rb'
require './package.rb'
require './client.rb'
class Packages_delivery
  @clients
  @packages
  attr_accessor :clients
  attr_accessor :packages

  def initialize()
    @clients = Client_list.new
    @packages = Packages_list.new
  end
  def register_new_client(name, surename, address)
    client = Client.new(name, surename, address)
    @clients.add_client(client)
    return client
  end    
  def register_new_package(sender, receiver, weight)
    package = Package.new(sender, receiver, weight)
    @packages.add_package(package)
    sender.add_package(package.id)
    return package
  end
  def search_by_id(id)
    return @packages.get_by_id(id)
  end
  def remove_package(id)
    package = search_by_id(id)
    if !(package == nil)
      sender = package.sender
      sender.remove_package(id)
      @packages.remove_package(package)
      return 0
    else return nil
    end
  end
  def search_client(name, surename)
    return @clients.get_by_name(name, surename)
  end  
  def remove_client(name, surename)
     @clients.remove(name, surename)
  end
  def get_client_info()
    print "At this moment there are ", @clients.how_many, " registered clients:\n"
    @clients.get_info
  end
  def save_to_file(filename)
    File.open(filename, "w") {|f| f.write(self.to_yaml) }
  end
  def load_from_file(filename)
     return nil if not File.exists?(filename)
    parsed = begin
    YAML.load(File.open(filename))
    rescue ArgumentError => e
      puts "Could not parse YAML: #{e.message}"
    end
    return parsed
  end
end
