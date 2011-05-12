#client.rb
require 'yaml'
class Client
  @name
  @surename
  @address
  @id
  attr_accessor :name, :surename, :address, :id

  def initialize(name = nil, surname = nil, address = nil)
    @name = name
	  @surename = surname
  	@address = address
  	@id = []
  end

  def add_package(nr)
    @id << nr
  end
  def remove_package(nr)
    @id.delete(nr)
  end
  def how_many_packages()
    @id.length
  end
end

