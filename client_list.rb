#client_list.rb

require './client.rb'

class Client_list
  @client
  attr_reader :client

  def initialize()
    @client = []
  end
  
  def add_client(client)
    if client.kind_of? Client
      @client << client
    end
  end

  def how_many()
    return @client.size
  end
  def get_by_index(index)
    return @client[index]
  end
  def get_info()
    print "Klientu sarasas: \n \n"
    @client.length.times do |i|
      @client[i].get_info 
      print "\n" 
    end
  end
  def get_by_name(name, surename)
    @client.length.times do |i|
      if (@client[i].get_name.eql? name) && (@client[i].get_surename.eql? surename)
        return @client[i]
      end
    end 
  return nil
  end
  def remove(name, surename)
    @client.delete(get_by_name(name, surename))  
  end
end
