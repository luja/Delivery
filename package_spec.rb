#package_spec.rb



require './package'

describe Package do
    before :each do
      @package = Package.new(100)
    end
    it "should initialize with weigh and price" do
      @package.weight.should == 100
      @package.price.should == 0
    end
    #++
    it "should set to first state when initialized" do
        @package.state.should == "Registered"
    end
    it "should change state in a sequence" do
      @package.state.should == "Registered"
      @package.next_state()
      @package.state.should == "Given to curier"
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
      @package.count_price == 300
    end
    it "should set a letter type if weight is under 300 g" do
      @package.set_weight(300)
      @package.type.should == "letter"
    end
    it "should set a small package type if weight is above 300 and under 800 g" do
      @package.set_weight(300)
      @package.type.should == "small package"
    end
end 
