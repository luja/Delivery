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

  it "receiver of client_list should be Client" do
    @client_list.client.first.should be_instance_of(Client)
  end

end
