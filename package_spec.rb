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
end 
