#packages_list

require './package.rb'

class Packages_list
  @packages
  attr_accessor :packages
  def initialize()
    @packages = []
  end
  def add_package(package)
    package.id = gen_id
    @packages << package
  end

  def gen_id
    unique = false
    while !unique do     
      package = Package.new(nil, nil, 20)
      id = package.generate_id
      unique = true
      @packages.length.times do |i|
        if id == @packages[i].id
          unique = false
          puts id
       end
      end
    end
  return id
  end

  def get_by_index(index)
    return @packages[index]
  end
  def get_by_id(id)
    @packages.length.times do |i|
      if @packages[i].id == id
        return @packages[i]
      end
    end 
  return nil
  end
 def how_many()
    return @packages.size
  end
  def sort_by_type(type)
    pckg = Packages_list.new
     @packages.length.times do |i|
      if @packages[i].type == type
        pckg.add_package(@packages[i])
      end
     end
   return pckg
  end
  def sort_by_state(state)
    pckg = Packages_list.new
     @packages.length.times do |i|
      if @packages[i].state == state
        pckg.add_package(@packages[i])
      end
     end
   return pckg
  end
  def remove_package(package)
    @packages.delete(package)
  end
 
end

