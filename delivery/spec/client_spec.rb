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
  #-------------------------------------matcher-------------
  it "should id list be empty" do
      @client.id.should be_empty
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
end

