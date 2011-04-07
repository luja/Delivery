#package.rb
class Package

    attr_accessor :weight
    attr_accessor :state 
    #attr_accessor :id

    def initialize(weight = nil, state = nil)
        @weight = weight
	@state = state
	#@address = address
	#@id = nil
    end
#    def set_name(name)
 #       @name = name
  #  end
    
   # def set_surename(surename)
    #    @surename = surename
    #end
  
   # def set_address(address)
    #    @address = address
    #end
    
end
