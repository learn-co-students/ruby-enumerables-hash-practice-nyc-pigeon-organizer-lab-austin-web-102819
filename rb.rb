data = {
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
    final = {}
    data.each do |first_level, all_other|
        # fist_level = :color, :gender, :location
        # all_other = all categories and name in the arrays
        all_other.each do |categorys, array|
            # category = sub sections of colors, genders, and locations
            # array = array of names
            array. each do |names|
                # name = each individual name
                final[names] = {color: [], gender: [], location: []}
                # This assigns every unique name as a key in the "final"
                # hash. Every key will have a value that is an array. The
                #arrays have keys for color, gender, and location.
            end
        end
    end
    # At this point we have have our main array and just need to assign
    # each pigeon its respective data.
    x = final.keys # = ["Theo", "Peter Jr.", "Lucky", "Ms. K", "Queenie", "Andrew", "Alex"]
    data[:color].each do |bird_color, names|
        #since we want to focus on re-assigning colors this point, we will
        # start breaking down each section starting from the color hash in
        # the data hash. Here we split up the unique colors and the names they
        # are assigned to.
        names.each do |bird_name|
            # now we will break down the array of names into each individual name
            x.each do |item| #=> each name
                if bird_name == item
                    final[item][:color] << bird_color.to_s
                    # at this point, we've assigned each bird in the final
                    # hash to its color(s).
                end
            end
        end
    end
    data[:gender].each do |bird_gender, names|
        names.each do |bird_name|
            x.each do |item|
                if bird_name == item
                    final[item][:gender] << bird_gender.to_s
                end
            end
        end
    end
    data[:lives].each do |bird_lives, names|
        names.each do |bird_name|
            x.each do |item|
                if bird_name == item
                    final[item][:location] << bird_lives.to_s
                end
            end
        end
    end
    p final
end

nyc_pigeon_organizer(data)
