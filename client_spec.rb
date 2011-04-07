#client_spec.rb

require './client' 

describe Client do
    it "initializes" do
        client = Client.new
    end
    it "should set name" do
        client = Client.new
        client.name = "Jonas"
    end
end

