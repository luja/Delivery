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
  failure_message_for_should do |actual|
    "expected that id would be unique in list"
  end

  failure_message_for_should_not do |actual|
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
  failure_message_for_should do |actual|
    "expected that client would be registered in list"
  end

  failure_message_for_should_not do |actual|
    "expected that client would  be registered in list"
  end
end

