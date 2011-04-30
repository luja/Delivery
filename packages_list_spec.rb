#packages_list_spec.rb

require './packages_list.rb'
require './package.rb'

describe Packages_list do
  before (:each) do
    @packages_list = Packages_list.new
    @package1 = Package.new(200)
    @packages_list.add_package(@package1)
    @package2 = Package.new(20)
    @package3 = Package.new(40)
    @packages_list.add_package(@package2)
    @packages_list.add_package(@package3)

  end
  #----------------------matcher-----------------------------------
  it "should be empty list when created" do
    packages_list1 = Packages_list.new
    packages_list1.packages.should be_empty
  end
  it "should have 3 package in list after adding 3 package" do
    @packages_list.should have(3).packages
  end
  #--------------------matcher--------------------------------------
  it "should package of packages_list should be Package" do
    @packages_list.packages.first.should be_instance_of(Package)
  end
  it "should get package by index" do
   @packages_list.get_package_by_index(1).should be_kind_of(Package)
  end
end
