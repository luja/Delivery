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

    it "should set name" do
        @client.set_name("Agne")
        @client.name.should == "Agne"
    end
        it "should set surname" do
        @client.set_surename("Piliakalniaite")
        @client.surename.should == "Piliakalniaite"
    end
        it "should set surname" do
        @client.set_address("Zalioji al. 56")
        @client.name.should == "Zalioji al. 56"
    end
   # it "should set address" do
    #    @client.surname = "Laimes al.34, Vilnius"
    #end
end

