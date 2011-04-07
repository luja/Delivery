#packages_delivery_spec.rb

require './packages_delivery.rb'
require './packages_list.rb'
require './senders_list.rb'
require './receivers_list.rb'

describe Packages_delivery do
    before (:each) do
        @packages_delivery = Packages_delivery.new
    end
    it "should be empty lists when created" do
        @packages_delivery.receivers_list.should be_empty
        @packages_delivery.senders_list.should be_empty
	@packages_delivery.packages_list.should be_empty
    end
end
