#packages_delivery_spec.rb

require './packages_delivery.rb'
require './packages_list.rb'
require './senders_list.rb'
require './receivers_list.rb'
require './package.rb'

describe Packages_delivery do
  before (:each) do
    @packages_delivery = Packages_delivery.new
    @packages_delivery.register_new_client("Jonas", "Kuponas", "Lieuva")
    @packages_delivery.register_new_client("Dana", "Karkaite", "Lieuva, Ateities g.")
    @packages_delivery.register_new_client("Karolina", "Grudyte", "Lieuva")
    @packages_delivery.register_new_client("Sabina", "Stenaite", "Lieuva")
    @packages_delivery.register_new_client("Bernardas", "Kardamavicius", "Lieuva")
    @packages_delivery.register_new_package(@packages_delivery.clients.get_by_index(1), @packages_delivery.clients.get_by_index(2), 200)
    @packages_delivery.register_new_package(@packages_delivery.clients.get_by_index(3), @packages_delivery.clients.get_by_index(4), 34)
    @packages_delivery.register_new_package(@packages_delivery.clients.get_by_index(2), @packages_delivery.clients.get_by_index(5), 180) 
    @packages_delivery.register_new_package(@packages_delivery.clients.get_by_index(4), @packages_delivery.clients.get_by_index(1), 300)
    @packages_delivery.register_new_package(@packages_delivery.clients.get_by_index(1), @packages_delivery.clients.get_by_index(2), 800)
  end
  #5
  it "should have list for storing packages of Packages_list type" do
    @packages_delivery.packages.should be_kind_of(Packages_list)
  end
   it "should have list for storing clients of Client_list type" do
    @packages_delivery.clients.should be_kind_of(Client_list)
  end
  it "should have 5 client after registering new client" do
    @packages_delivery.clients.how_many().should == 5
  end
   it "should have 5 package after registering new package" do
    @packages_delivery.packages.how_many().should == 5
  end
  it "should search package by id" do
    id =  @packages_delivery.packages.get_by_index(2).get_id
    @packages_delivery.search_by_id(id).get_id.should == id
  end
  it "should remove package from list" do
    @packages_delivery.remove_package(package)
    @packeges_delivery.packages.how_many.should == 4
  end
end
