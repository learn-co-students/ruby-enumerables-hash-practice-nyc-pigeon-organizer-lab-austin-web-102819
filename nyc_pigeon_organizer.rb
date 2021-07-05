require "pry"
pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  pigeon_list ={} # Create a new hash in which to re-arrange data
  data.each do |attribute_names, attribute_values| # splitting up the first layer of the hash (which creates a new array for the value)
    attribute_values.each do |attribute, pigeon_names| # Splitting up the attribute and the pigeons in the newly created array
      pigeon_names.each do |names| # Splitting up the names
        if !pigeon_list.include? names # If the key is in there,
          # binding.pry
          pigeon_list[names] = {} # Create the name as a key to a hash
        end
          if !pigeon_list[names].include? attribute_names
            # binding.pry
             pigeon_list[names][attribute_names]= [] # Create a new array
         # Add these items to the array
          end
          if !pigeon_list[names][attribute_names].include? attribute
            pigeon_list[names][attribute_names] << attribute.to_s
          end
    end
      # binding.pry
  end
end
pigeon_list
end



# PsuedoCode
# Accept data in the form of a hash
# Create a new hash in which to re-arrange data
# Collect each pigeon name
# Insert pigeon name as the key of a new hash (hash from step 1)
# Create a new hash for attributes
# Collect attribute keys
# Insert attribute keys
# Assign keys to attribute arrays
# Return newly formed array
