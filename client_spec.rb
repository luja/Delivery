#client_spec.rb

require './client' 

describe Client do
    before :each do
      @client = Client.new("Jonas", "Jonaitis", "Laimes al. 10")
    end
    it "should initialize with name, surename, and address" do
        @client.name.should == "Jonas"
	@client.surename.should == "Jonaitis"
	@client.address.should == "Laimes al. 10"
    end
  #  it "should set surname" do
   #     @client.surname = "Jonas"
    #end
   # it "should set address" do
    #    @client.surname = "Laimes al.34, Vilnius"
    #end
end

