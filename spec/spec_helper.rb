require 'simplecov'

SimpleCov.start do
    add_filter 'spec'
end


require './packages_delivery.rb'
require './packages_list.rb'
require './client.rb'
require './client_list.rb'
require './package.rb'

RSpec::Matchers.define :be_unique_in do |list|
  match do |id|
   @unique = true
        list.packages.length.times do |i|
            if list.packages[i].id == id
                @unique = false
            end
        end
        @unique
    end
  failure_message_for_should do 
    "expected that id would be unique in list"
  end

  failure_message_for_should_not do 
    "expected that id would not be unique in list"
  end
end

RSpec::Matchers.define :be_registered do |list|
  match do |client|
   @registered = false
        list.client.length.times do |i|
            if (list.client[i].name == client.name) && (list.client[i].surename == client.surename) && (list.client[i].address == client.address)
                @registered = true
            end
        end
        @registered
    end
  failure_message_for_should do 
    "expected that client would be registered in list"
  end

  failure_message_for_should_not do 
    "expected that client would  be registered in list"
  end
end


RSpec::Matchers.define :be_same_file_as do |correct_file|
  match do |given_file|
    same = false
    if File.exists?(given_file) & File.exists?(correct_file)      
      if File.ftype(given_file) != File.ftype(correct_file) || File.size(given_file) != File.size(correct_file)
         same = false	           
         else open(given_file) do |f1|
	         open(correct_file) do |f2|
	           blocksize = f1.lstat.blksize
	           same = true
	           while same && !f1.eof? && !f2.eof?
	             same = f1.read(blocksize) == f2.read(blocksize)
	           end
	         end
         end
      end
    end
    same  
  end
failure_message_for_should do 
  "expected that two files would be the same"
end
failure_message_for_should_not do 
  "expected that two files wont be the same"
end
end

RSpec::Matchers.define :have_same_data do |expected|
  match do |actual|
  expected.clients.how_many == actual.clients.how_many && expected.packages.packages.length == actual.packages.packages.length
    end
  failure_message_for_should do 
    "expected that two objects keep same data"
  end

  failure_message_for_should_not do 
    "expected that two objects do not keep same data"
  end
end

