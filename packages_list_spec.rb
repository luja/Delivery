#packages_list_spec.rb

require './packages_list.rb'
require './package.rb'
require './client.rb'
require './matchers.rb'

describe Packages_list do
  before (:each) do
    @packages_list = Packages_list.new
    @package1 = Package.new(Client.new, Client.new, 200)
    @packages_list.add_package(@package1)
    @package2 = Package.new(nil, nil, 750)
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

  it "should get package from the list with given id" do
    id = @package2.id
    @packages_list.get_by_id(id).id.should == id
  end 
  it "should return nil if searching with wrong id" do
    @packages_list.get_by_id("bu") == nil
  end 
  #------------------------------matcher---------------------------------- 
  it "should return nil if cant find package with given id" do
    @packages_list.get_by_id(12).should be_nil
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
  it  "should generate unique id" do
    id = @packages_list.gen_id
    id.should be_unique_in(@packages_list)
  end
  it "should return all letters" do
    list =  @packages_list.sort_by_type("Letter")
    list.should have(2).packages
  end
 it "should return all small packages" do
    list =  @packages_list.sort_by_type("Small package")
    list.should have(1).packages
  end
 it "should return all medium packages" do
     pckg = Package.new(nil, nil, 850)
    @packages_list.add_package(pckg)
    list =  @packages_list.sort_by_type("Medium package")
    list.should have(1).packages
  end
 it "should return all big packages" do
    pckg = Package.new(nil, nil, 1550)
    @packages_list.add_package(pckg)
    list =  @packages_list.sort_by_type("Big package")
    list.should have(1).packages
  end
   it "should return all registered packages" do
    list =  @packages_list.sort_by_state("Registered")
    list.should have(3).packages
  end
   it "should return all given to curier packages" do
    @packages_list.packages[2].next_state
    @packages_list.packages[1].next_state
    list =  @packages_list.sort_by_state("Given to curier")
    list.should have(2).packages
  end
    it "should return all given to curier packages" do
    @packages_list.packages[2].next_state
    @packages_list.packages[2].next_state
    list =  @packages_list.sort_by_state("Delivered")
    list.should have(1).packages
  end
end
