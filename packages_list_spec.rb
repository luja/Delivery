#packages_list_spec.rb

require './packages_list.rb'
require './package.rb'

describe Packages_list do
    before (:each) do
        @packages_list = Packages_list.new
    end

    it "should be empty list when created" do
        @packages_list.packages.should be_empty
    end
end
