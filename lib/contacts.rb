def remove_strawberry(contacts)
  contacts.each do |name, attribute|
    attribute.each do |thingies, value|
      if thingies == :favorite_ice_cream_flavors
        value.delete_if {|ice_cream| ice_cream == "strawberry"}
      end
    end
  end
end
