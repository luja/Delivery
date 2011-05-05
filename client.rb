#client.rb

class Client
  @name
  @surename
  @address
  @id
  attr_reader :name, :surename, :address, :id

  def initialize(name = nil, surname = nil, address = nil)
    @name = name
	@surename = surname
	@address = address
	@id = []
  end
  def set_name(name)
    @name = name
  end
    
  def set_surename(surename)
    @surename = surename
  end
  
  def set_address(address)
    @address = address
  end
  def get_name()
    return @name
  end
  def get_surename()
    return @surename
  end
  def add_package(nr)
    @id << nr
  end
  def get_info()
    print " Vardas: ", @name, "\n"
    print " Pavarde: ", @surename, "\n"
    print " Adresas: ", @address, "\n"
  end
end

