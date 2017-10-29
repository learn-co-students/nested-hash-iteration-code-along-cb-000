require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  # contacts = {
  #   "Jon Snow" => {
  #     name: "Jon",
  #     email: "jon_snow@thewall.we",
  #     favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  #   },
  #   "Freddy Mercury" => {
  #     name: "Freddy",
  #     email: "freddy@mercury.com",
  #     favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  #   }
  # }

def remove_strawberry(contacts)
  # step 1: iterate over first level
  contacts.each do |person, contact_details|
    # binding.pry

    # step 2: iterate over second level
    contact_details.each do |attribute, value|
      # binding.pry

      # step 3: locate the required attribute and its corresponding data
      if attribute == :favorite_ice_cream_flavors

        # step 4: use delete_if to iterate through the ice cream array and remove any element that matches "strawberry"
        value.delete_if { |ice_cream| ice_cream == "strawberry" }
      end
    end
  end
end

# run file: ruby bin/contacts
