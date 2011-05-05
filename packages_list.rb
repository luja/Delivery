#packages_list

require './package.rb'

class Packages_list
  @packages
  attr_reader :packages
  def initialize()
    @packages = []
  end
  def add_package(package)
    unique = false
    while !unique do     
      id = package.generate_id
      unique = true
      for i in 1..@packages.size do
        if id == @packages[i].get_id
          unique = false
        end
      end
    end
    package.set_id(id)
    @packages << package
  end
  def get_by_index(index)
    return @packages[index]
  end
 def how_many()
    return @packages.size
  end
end
