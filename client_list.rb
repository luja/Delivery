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
end
