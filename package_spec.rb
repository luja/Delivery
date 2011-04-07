#package_spec.rb

require './package'

describe Package do
    before :each do
      @package = Package.new(100, "Registered")
    end
    it "should initialize with weight and state" do
      @package.weight.should == 100
      @package.state.should == "Registered"
    end
    it "should set_weight" do
      @package.set_weight(350)
      @package.weight.should == 350
    end 

    it "should set_state" do
      @package.set_state("Delivered")
      @package.state.should == "Delivered"
    end 

end 
