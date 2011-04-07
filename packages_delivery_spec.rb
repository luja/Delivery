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
    it "should be empty lists when created" do
        @packages_delivery.receivers_list.should be_empty
        @packages_delivery.senders_list.should be_empty
	@packages_delivery.packages_list.should be_empty
    end
    #it "should add receiver" do
     #   @packages_delivery.add_receiver
      #  @packages_delivery.receivers_list.should have(1).receivers
    #end
end
