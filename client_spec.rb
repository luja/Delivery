#client_spec.rb

require './client' 

describe Client do
  before :each do
      @client = Client.new("Jonas", "Jonaitis", "Laimes al. 10")
  end
  it "should initialize with name, surenam, ad address" do
      @client.name.should == "Jonas"
      @client.surename.should == "Jonaitis"
      @client.address.should == "Laimes al. 10"
  end
  #1
  it "should id list be empty" do
      @client.id.should be_empty
  end
  it "should set name" do
      @client.set_name("Agne")
      @client.name.should == "Agne"
  end
  it "should set surname" do
    @client.set_surename("Piliakalniaite")
    @client.surename.should == "Piliakalniaite"
  end
  it "should set address" do
    @client.set_address("Zalioji al. 56")
    @client.address.should == "Zalioji al. 56"
  end
  it "should add package" do
    @client.add_package(4)
    @client.id.length.should == 1
  end    
end

