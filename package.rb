#package.rb

PRICE_COF = 0.3
PRICE = 0.5
PACKAGE_STATE = ["Registered", "Given to curier","Delivered"]
PACKAGE_TYPE = ["Letter", "Small package", "Medium package", "Big package"]

require './package.rb'

class Package

  @weight
  @state
  @price
  @type
  @sender
  @receriver
  @id
  attr_reader :weight
  attr_reader :state 
  attr_reader :price
  attr_reader :type
  attr_reader :sender
  attr_reader :receiver
  attr_reader :id
  def initialize(weight = nil, state = nil)
    @weight = weight
    @state = PACKAGE_STATE[0]
    @sender = nil
    @receiver = nil
    @id = 0
    self.set_type
    self.count_price
  end
  def set_id (id)
    @id = id
  end
  def set_weight(weight)
    @weight = weight
    self.set_type
  end
  
  def set_state(state)
    @state = state
  end
    
  def count_price()
    @price = PRICE + PRICE_COF * @weight
  end

  def next_state()
    @state = PACKAGE_STATE[PACKAGE_STATE.index(@state) + 1]
    if @state == nil 
      @state = PACKAGE_STATE[2]
    end
  end
  def set_sender(sender)
    if sender.kind_of? Client
    @sender = sender
    end
  end
  def set_receiver(receiver)
    @receiver = receiver
  end
  def set_type()
    if @weight <= 300
      @type = PACKAGE_TYPE[0]
      elsif @weight <= 800
        @type = PACKAGE_TYPE[1]
        elsif @weight <= 1500
          @type = PACKAGE_TYPE[2]
        else @type = PACKAGE_TYPE[3] 
    end
  end

end
