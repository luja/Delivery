#package_spec.rb



require './package'
require './client.rb'
describe Package do
  before :each do
    @package = Package.new(100)
  end
  it "should initialize with weigh and price" do
    @package.weight.should == 100
    @package.price.should > 0
  end
  it "should initialize with sender and receiver eqqual to nil" do
    @package.sender.should == nil
    @package.receiver.should == nil
  end
  it "Should initialiaze with id equal to 0" do
    @package.id.should == 0
  end
    #++
  it "should set to first state when initialized" do
      @package.state.should == "Registered"
  end
  it "should initialize with proper type not nil" do
    @package.type.should_not  == nil
  end
  it "should initialize with state registered" do
    @package.state.should == "Registered"
  end
  it "should change state registered into given to curier" do
    @package.next_state()
    @package.state.should == "Given to curier"
  end
  it "should change state Given to curier into registered" do
    @package.next_state()
    @package.next_state()
    @package.state.should == "Delivered"
  end
  it "should not change state delivered" do
    @package.next_state()
    @package.next_state()
    @package.next_state()
    @package.state.should == "Delivered"
  end
  it "should set weight" do
    @package.set_weight(350)
    @package.weight.should == 350
  end 

  it "should set state" do
    @package.set_state("Delivered")
    @package.state.should == "Delivered"
  end 
  #++
  it "should count price" do
    @package.set_weight(1000)
    @package.count_price 
    @package.price.should == 300.5
  end
  it "should set price even if package weight 0 g" do
    @package.set_weight(0)
    @package.count_price
    @package.price.should == PRICE
  end
  it "should set a letter type if weight is under 300 g" do
    @package.set_weight(230)
    @package.type.should == "Letter"
  end
  it "should set a medium package type if weight is 800 - 1500 g" do
    @package.set_weight(1000)
    @package.type.should == "Medium package"
  end
  it "should set a small package type if weight is above 300 and under 800 g" do
    @package.set_weight(750)
    @package.type.should == "Small package"
  end
  it "should set a big package type if weight is above 1500 g" do
    @package.set_weight(2000)
    @package.type.should == "Big package"
  end
  it "shouuld set id" do
    @package.set_id("2d4g")
    @package.id.should == "2d4g"
  end
  it "should set sender and receiver" do
    @package.set_sender("Jonas")
    @package.set_receiver("Petras")
  end
  it "should sender be kind of client " do
    @package.set_sender(Client.new())
    @package.set_sender("Bernardas")
    @package.sender.should be_kind_of(Client)
  end
end 
