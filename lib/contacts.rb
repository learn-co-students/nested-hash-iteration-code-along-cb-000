def remove_strawberry(contacts)
  contacts.each do |x, y|
    y.each do |a, b|
      b.delete("strawberry")
    end
  end
end
