#test.rb
require 'yaml'
require 'package_delivery.rb'
require 'interface.rb'
puts name = "steve"
name = "./" + name
puts name
  delivery = Packages_delivery.new
  delivery = delivery.load_from_file("./bu.yml")
  
#  delivery.register_new_client("Jonas", "Kuponas", "Lieuva")
#  delivery.register_new_client("Dana", "Karkaite", "Lieuva, Ateities g.")
#  delivery.register_new_client("Karolina", "Grudyte", "Lieuva")
#  delivery.register_new_client("Sabina", "Stenaite", "Lieuva")
#  delivery.register_new_client("Bernardas", "Kardamavicius", "Lieuva")
#  delivery.register_new_package(delivery.clients.get_by_index(1), delivery.clients.get_by_index(2), 200)
#  delivery.register_new_package(delivery.clients.get_by_index(3), delivery.clients.get_by_index(4), 34)
#  delivery.register_new_package(delivery.clients.get_by_index(2), delivery.clients.get_by_index(3), 180) 
#  delivery.register_new_package(delivery.clients.get_by_index(4), delivery.clients.get_by_index(1), 300)
#  delivery.register_new_package(delivery.clients.get_by_index(1), delivery.clients.get_by_index(2), 800)
#  delivery.save_to_file("./bu.yml")

#parsed = begin
 # YAML.load(File.open("/tmp/test.yml"))
#rescue ArgumentError => e
#  puts "Could not parse YAML: #{e.message}"
#end

