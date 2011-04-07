#client_spec.rb

require './client' 

describe Client do
    before :each do
      @client = Client.new
    end
    it "should initially have nil" do
        @client.name.should == nil
    end
  #  it "should set surname" do
   #     @client.surname = "Jonas"
    #end
   # it "should set address" do
    #    @client.surname = "Laimes al.34, Vilnius"
    #end
end

