#client_list_spec.rb

require './client_list.rb'
require './client.rb'

describe Client_list do
  before (:each) do
    @client_list = Client_list.new
    @client1 = Client.new('Jonas', 'Karpaitis', 'Aguonu g. 28' )
    @client_list.add_client(@client1)
    @client2 = Client.new('Rita', 'Daigytte', 'Kalmaru g. 28' )
    @client_list.add_client(@client2)
    @client3 = Client.new('Paulius', 'Stulgis', 'Vilties g. 28' )
    @client_list.add_client(@client3)
  end

  it "should be empty list when created" do
    client_list = Client_list.new
    client_list.client.should be_empty
  end

  it "should have 3 clients in list after adding three clients" do
    @client_list.should have(3).client
  end

  it "should add only Client type variables to list" do
    @client_list.add_client("Jonas")
    @client_list.should have(3).client
  end

  it "should return how many clients is in list" do
    @client_list.get_info
    @client_list.how_many().should == 3
  end

   it "should get client by index" do
   @client_list.get_by_index(1).should be_kind_of(Client)
  end
  it "should get client by name and surename" do
    @client_list.get_by_name("Jonas", "Karpaitis").get_name.should == "Jonas"
    @client_list.get_by_name(1, 12).should == nil
  end
  it "should remove client by name and surename" do
    @client_list.get_info
    @client_list.remove("Jonas", "Karpaitis")
    @client_list.get_info
    @client_list.how_many.should == 2
  end
end
