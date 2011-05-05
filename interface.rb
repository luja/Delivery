#interface.rb
require './packages_delivery.rb'
#class Interface
  delivery = Packages_delivery.new
  delivery.register_new_client("Jonas", "Kuponas", "Lieuva")
  delivery.register_new_client("Dana", "Karkaite", "Lieuva, Ateities g.")
  delivery.register_new_client("Karolina", "Grudyte", "Lieuva")
  delivery.register_new_client("Sabina", "Stenaite", "Lieuva")
  delivery.register_new_client("Bernardas", "Kardamavicius", "Lieuva")
  delivery.register_new_package(delivery.clients.get_by_index(1), delivery.clients.get_by_index(2), 200)
  delivery.register_new_package(delivery.clients.get_by_index(3), delivery.clients.get_by_index(4), 34)
  delivery.register_new_package(delivery.clients.get_by_index(2), delivery.clients.get_by_index(3), 180) 
  delivery.register_new_package(delivery.clients.get_by_index(4), delivery.clients.get_by_index(1), 300)
  delivery.register_new_package(delivery.clients.get_by_index(1), delivery.clients.get_by_index(2), 800)
  delivery.get_client_info
#end
