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
    def set_weight(weight)
        @weight = weight
    end
    
    def set_state(state)
        @state = state
    end
    
end
