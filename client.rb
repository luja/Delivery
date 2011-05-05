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
  def remove_package(nr)
    @id.delete(nr)
  end
  def get_info()
    print " Vardas: ", @name, "\n"
    print " Pavarde: ", @surename, "\n"
    print " Adresas: ", @address, "\n"
  end
  def get_spec_info()
    get_info
    print "Siunciami siuntiniai: \n"
    @id.length.times do |i|
      print @id[i], " "
    end
    print "\n"
  end
end

