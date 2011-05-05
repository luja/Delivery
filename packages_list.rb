#packages_list

require './package.rb'

class Packages_list
  @packages
  attr_reader :packages
  def initialize()
    @packages = []
  end
   def get_info()
    @packages.length.times do |i|
    print "package. Weight  ", @packages[i].get_weight,  "  id   ",  @packages[i].get_id, "\n"
    end
  end

  def add_package(package)
    unique = false
    while !unique do     
      id = package.generate_id
      unique = true
      @packages.length.times do |i|
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
  def get_by_id(id)
    @packages.length.times do |i|
      if @packages[i].get_id == id
        return @packages[i]
      end
    end 
  return nil
  end
 def how_many()
    return @packages.size
  end
end

