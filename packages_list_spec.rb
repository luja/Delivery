#packages_list_spec.rb

require './packages_list.rb'
require './package.rb'
require './client.rb'

describe Packages_list do
  before (:each) do
    @packages_list = Packages_list.new
    @package1 = Package.new(Client.new, Client.new, 200)
    @packages_list.add_package(@package1)
    @package2 = Package.new(nil, nil, 20)
    @package3 = Package.new(nil, nil, 40)
    @packages_list.add_package(@package2)
    @packages_list.add_package(@package3)
    
  end
  it "should be empty list when created" do
    packages_list1 = Packages_list.new
    packages_list1.packages.should be_empty
  end
  it "should have 3 package in list after adding 3 package" do
    @packages_list.should have(3).packages
  end
  it "should package of packages_list should be Package" do
    @packages_list.packages.first.should be_instance_of(Package)
  end
  it "should get package by index" do
   @packages_list.get_by_index(1).should be_kind_of(Package)
  end
  it "should set  id for added package" do
   @packages_list.get_by_index(2).id.should_not == 0
  end
   it "should set  unique id for added package" do
   @packages_list.get_by_index(2).id.should_not == @packages_list.get_by_index(1)
  end
  it "should get package from the list with given id" do
    id = @package2.get_id
    @packages_list.get_by_id(id).get_id.should == id
  end 
  it "should return how many packages is in list" do  
    @packages_list.how_many().should == 3
  end
   it "should remove package from list" do
    @packages_list.remove_package(@package2)
    @packages_list.how_many().should == 2
    @packages_list.remove_package(@package1)
    @packages_list.how_many().should == 1  
    @packages_list.remove_package("frisk")
    @packages_list.how_many().should == 1
  end
end
