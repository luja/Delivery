#interface.rb
require './packages_delivery.rb'
require 'yaml'
class Interface
  @delivery 
def initialize
  @delivery = Packages_delivery.new
end
def get_command
   @delivery = @delivery.load_from_file("./data.yml")
   cmd = nil
   while (cmd != "exit")
         puts"\n======================Main menu=========================\n"
   puts "Commands: \n -new package \n -delete package \n -search pacakge \n -print list of client \n -print list of packages \n -search client  "
   puts " -sort by type \n -sort by state\n -exit"
   cmd = gets.chomp
   if cmd != "exit"
     command_interpretator(cmd)
   end
  end
  puts "Exiting program.."
  puts "Do you want to safe data? y/n"
  if gets.chomp == "y"
    @delivery.save_to_file("./data.yml")
    puts "Save complited."
  end
  puts "Program terminated."
end

def command_interpretator(cmd)
  case cmd
    when "new package"
      puts"\n===================Creating package============================\n"
      new_package
    when "delete package"
      puts"\n===================Deleting package============================\n"
      delete_package
    when "search package"
      puts"\n===================Searching package============================\n"
      search_package
#     when "generate check"
 #     puts"\n===================Generating check============================\n"
  #    generate_check
    when "search client"
      puts "\n====================Searching client============================\n"    
      search_client
    when "print list of client"
      puts"\n===================Client List============================\n"
      print_client_list(@delivery.clients)
    when "print list of packages"
      puts"\n===================Package List============================\n"
      print_package_list(@delivery.packages)
    when "sort by type"
      puts"\n===================Sorting by type============================\n"
      sort_by_type
    when "sort by state"
      puts"\n===================Sorting by state============================\n"
      sort_by_state

    else puts "Invalid command"
      end
end
#-------------------------------------------------------get information---------------------------------
def new_client
  puts "Name: \n"
  name = gets.chomp
  puts "Surename:\n"
  surename = gets.chomp
  puts "Address:\n"
  address = gets.chomp
  return @delivery.register_new_client(name, surename, address)
end
def sort_by_type
  puts "What type you want to see: -Letter \n -Small package \n-Medium package \n-Big package\n"
  type = gets.chomp
  list = @delivery.packages.sort_by_type(type)
  print_package_list(list)
end
def sort_by_state
  puts "What type you want to see:\n -Registeres \n -Given to curier \n-Delivered \n"
  state = gets.chomp
  list = @delivery.packages.sort_by_state(state)
  print_package_list(list)
end
def search_client
  puts "Name: \n"
  name = gets.chomp
  puts "Surename:\n"
  surename = gets.chomp
  client = @delivery.search_client(name, surename)
  if client != nil
    print_client_info(client)
  else puts "This client isnt registered"
  end
end
def new_package
  weight = puts "Package weight:\n"
  weight = gets.chomp.to_i
  puts "Insert sender data."
  sender = new_client
  puts "Insert receiver data."
  receiver = new_client
  package =  @delivery.register_new_package(sender, receiver, weight)
  puts "Package was registered.\n"
  print_package_info(package)
end
def delete_package
  puts "Insert id"
  id = gets.chomp
  if @delivery.remove_package(id) == nil 
    puts "Package with given id doesn't exist"
  else puts "Package was deleted."
  end
end
def search_package
  puts "Insert id"
  id = gets.chomp
  package = @delivery.search_by_id(id)
  if package !=nil
    print_package_info(package)
  else puts "Package doesn't exist"
  end
end
#-------------------------------------------------------print------------------------------------------
  def print_client_info(client)
    if client.kind_of? Client
      print " Name: ", client.name, "\n"
      print " Surname: ", client.surename, "\n"
      print " Address: ", client.address, "\n"
    else print "Wrong data"
    end
  end
  
  def print_client_list(client_list)
    if client_list.kind_of? Client_list
      client_list.client.length.times do |i|
        print i+1, ". \n"
        print_client_info(client_list.client[i])
      end
    else print "Wrong data"
    end 
  end
def print_full_client_info(client)
    if client.kind_of? Client
      print_client_info(client)
      client.id.length.times do |i|
        print client.id[i], " "
      end      
    print "\n"
    else print "Wrong data"
    end
  end

  def print_package_info(package) 
    if package.kind_of? Package
      print " Id: ", package.id, "\n"
      print " Weight: ", package.weight, "\n"
      print " Type: ", package.type, "\n"
      print " State: ", package.state, "\n"
      print " Delivery price: ", package.price, "\n"
      print "Sender:", "\n"
      print_client_info(package.sender)
      print "Receiver:", "\n"
      print_client_info(package.receiver)
    else print "Wrong data"
    end
  end
  def print_package_list(package_list) 
    if package_list.kind_of? Packages_list
    package_list.packages.length.times do |i|
      print i+1, ". \n"
      print_package_info(package_list.packages[i])
    end
    else print "Wrong data"
    end
  end
end
if __FILE__ == $0
  delivery = Packages_delivery.new
  delivery = delivery.load_from_file("./bu.yml")
  interface = Interface.new
 # print delivery.clients.client[1]
  interface.get_command
end
