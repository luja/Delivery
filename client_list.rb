#client_list.rb
require 'yaml'
require './client.rb'

class Client_list
  @client
  attr_accessor :client

  def initialize()
    @client = []
  end
  def add_client(client)
    if (client.kind_of? Client) && !is_registered(client)
      @client << client
      return client
    elsif (client.kind_of? Client)
      return get_by_name(client.name, client.surename)
    end
  return nil
  end
  def is_registered(client)
    registered = false
    @client.length.times do |i|
      if (@client[i].name == client.name) && (@client[i].surename == client.surename) && (@client[i].address == client.address)
        registered = true
      end
    end
  return registered
  end
  def how_many()
    return @client.size
  end
  def get_by_index(index)
    return @client[index]
  end

 def get_by_name(name, surename)
    @client.length.times do |i|
      if (@client[i].name.eql? name) && (@client[i].surename.eql? surename)
        return @client[i]
      end
    end 
  return nil
  end
  def remove(name, surename)
    @client.delete(get_by_name(name, surename))  
  end
  def is_empty()
    if @client.size == 0
      return true
    else return false
    end
  end
end
