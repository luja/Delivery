#packages_delivery_spec.rb

require './packages_delivery.rb'
require './packages_list.rb'
require './senders_list.rb'
require './receivers_list.rb'

describe Packages_delivery do
  before (:each) do
    @packages_delivery = Packages_delivery.new
  end
  #5
  it "should have list for storing packages of Packages_list type" do
    @packages_delivery.packages.should be_kind_of(Packages_list)
  end
   it "should have list for storing clients of Client_list type" do
    @packages_delivery.clients.should be_kind_of(Client_list)
  end
  it "should have 1 client after registering new client" do
    @packages_delivery.register_new_client("Jonas", "Kuponas", "Lieuva")
    @packages_delivery.clients.how_many().should == 1
  end
   it "should have 1 package after registering new package" do
    @packages_delivery.register_new_client("Jonas", "Kuponas", "Lieuva")
    @packages_delivery.register_new_package(@packages_delivery.clients.get_by_index(1), @packages_delivery.clients.get_by_index(1), 200)
    @packages_delivery.packages.how_many().should == 1
  end
end
