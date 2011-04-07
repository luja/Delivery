#receivers_list_spec.rb

require './receivers_list.rb'
require './client.rb'

describe Receivers_list do
    before (:each) do
        @receivers_list = Receivers_list.new
        @client = Client.new
    end

    it "should be empty list when created" do
        @receivers_list.receivers.should be_empty
    end

    it "should have 1 receiver in list after adding first receiver" do
        @receivers_list.add_receiver(@client)
        @receivers_list.should have(1).receivers
    end

    it "receiver of receivers_list should be Client" do
        @receivers_list.add_receiver(@package)
        @receivers_list.receivers.first.should be_instance_of(Client)
    end

end
