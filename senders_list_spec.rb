#senders_list_spec.rb

require './senders_list.rb'
require './client.rb'

describe Senders_list do
    before (:each) do
        @senders_list = Senders_list.new
        @client = Client.new
    end

    it "should be empty list when created" do
        @senders_list.senders.should be_empty
    end

    it "should have 1 sender in list after adding first sender" do
        @senders_list.add_sender(@client)
        @senders_list.should have(1).senders
    end

    it "sender of senders_list should be Client" do
        @senders_list.add_sender(@package)
        @senders_list.senders.first.should be_instance_of(Client)
    end

end
