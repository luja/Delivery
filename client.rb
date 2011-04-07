#client.rb

class Client

    attr_accessor :name
    attr_accessor :surename 
    attr_accessor :address
    #attr_accessor :id

    def initialize(name = nil, surname = nil, address = nil)
        @name = name
	@surename = surname
	@address = address
	#@id = nil
    end
    
end

