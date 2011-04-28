#packages_list_spec.rb

require './packages_list.rb'
require './package.rb'

describe Packages_list do
    before (:each) do
        @packages_list = Packages_list.new
        @package = Package.new
    end
    #----------------------matcher-----------------------------------
    it "should be empty list when created" do
        @packages_list.packages.should be_empty
    end

    it "should have 1 package in list after adding package" do
        @packages_list.add_package(@package)
        @packages_list.should have(1).packages
    end
    #--------------------matcher--------------------------------------
    it "package of packages_list should be Package" do
        @packages_list.add_package(@package)
        @packages_list.packages.first.should be_instance_of(Package)
    end

end
