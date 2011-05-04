#packages_list

require './package.rb'

class Packages_list
  @packages
  attr_reader :packages
  def initialize()
    @packages = []
  end
  def add_package(package)
     @packages << package
  end
  def get_package_by_index(index)
    return @packages[index]
  end

end
