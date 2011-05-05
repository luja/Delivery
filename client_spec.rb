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
  #-------------------------------------matcher-------------
  it "should id list be empty" do
      @client.id.should be_empty
  end
  it "should set name" do
      @client.set_name("Agne")
      @client.name.should == "Agne"
  end
  #-----------------------------------matcher----------------
  it "should set surname" do
    @client.set_surename("Piliakalniaite")
    @client.surename.should eql("Piliakalniaite")
  end
  it "should set address" do
    @client.set_address("Zalioji al. 56")
    @client.address.should == "Zalioji al. 56"
  end
  it "should add package" do
    @client.add_package(4)
    @client.id.length.should == 1
  end 
  it "should return number of packages that been send" do
    @client.how_many_packages.should == @client.id.length
  end 
  it "should remove package" do
    @client.add_package(4)
    @client.add_package(5)
    @client.add_package(3)
    @client.remove_package(5)
    @client.id.length.should == 2
  end 
  it "Should get name of client" do
    @client.get_name.should eql(@client.name)
  end
  it "Should get surename of client" do
    @client.get_surename.should eql(@client.surename)
  end   
end

