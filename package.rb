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
  @receiver
  @id
  attr_accessor :weight, :price, :id
  attr_reader   :type, :sender, :receiver, :state

  def initialize(sender =nil, receiver = nil, weight = nil)
    @weight = weight
    @state = PACKAGE_STATE[0]
    self.set_sender(sender)
    self.set_receiver(receiver)
    @id = 0
    self.set_type
    self.count_price
  end
  def count_price()
    @price = PRICE + PRICE_COF * @weight
  end
  def set_sender(sender)
    if sender.kind_of? Client
      @sender = sender
      return 0
    else @sender = nil
    return 1
    end
  end
  def set_receiver(receiver)
    if receiver.kind_of? Client 
      @receiver = receiver
      return 0
    else @receiver = nil
      return 1
    end
  end
  def set_weight(weight)
    @weight = weight
    self.set_type
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
   def next_state()
    @state = PACKAGE_STATE[PACKAGE_STATE.index(@state) + 1]
    if @state == nil 
      @state = PACKAGE_STATE[2]
    end
   end
  def generate_id()
    @id =rand(36**8).to_s(36) 
    return @id
  end
end
