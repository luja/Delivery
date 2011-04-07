#package.rb

PRICE_COF = 0.3
PACKAGE_STATE = ["Registered", "Given to curier","Delivered"]

class Package

    attr_accessor :weight
    attr_accessor :state 
    attr_accessor :price
    attr_accessor :type
    
    def initialize(weight = nil, state = nil)
      @weight = weight
      @state = PACKAGE_STATE[0]
      @price = 0
      set_type
      #@address = address
      #@id = nil
    end
    def set_weight(weight)
      @weight = weight
    end
    
    def set_state(state)
      @state = state
    end
    def count_price()
      @price = PRICE_COF * @weight
    end
    def next_state()
      @state = PACKAGE_STATE[PACKAGE_STATE.index(@state) + 1]
    end
    def set_type
      if @weight < 300
        @type = "letter"
      end
    end
end
