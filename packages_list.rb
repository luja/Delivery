#packages_list

require './package.rb'

class Packages_list
    @packages
    attr_reader :packages

    def initialize()
       @packages = []
    end
    def add_package(packg)
        package = Package.new()
        @packages << package
    end
end
