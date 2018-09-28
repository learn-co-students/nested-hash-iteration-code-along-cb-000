contacts = {
  "Jon Snow" => {
    name: "Jon",
    email: "jon_snow@thewall.we",
    favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  },
  "Freddy Mercury" => {
    name: "Freddy",
    email: "freddy@mercury.com",
    favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  }
}

def remove_strawberry(contacts)
  contacts.each do |person, info|
    info.each do |k,v|
      if k == "favorite_ice_cream_flavors"
        v.delete_if { |flavor| flavor == "strawberry" }
      end
    end
  end
end

remove_strawberry(contacts)
p contacts
