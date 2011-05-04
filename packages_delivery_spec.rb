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
  #it "should add receiver" do
   #   @packages_delivery.add_receiver
    #  @packages_delivery.receivers_list.should have(1).receivers
  #end
end
