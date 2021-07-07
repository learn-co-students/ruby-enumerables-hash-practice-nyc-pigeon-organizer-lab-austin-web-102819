def nyc_pigeon_organizer(data)
  orangized_pigeons = {}
  data.each do |key, value|
    value.each do |value_2, names|
      names.each do |name|
        
        if !orangized_pigeons[name]
          orangized_pigeons[name] = {}
        end 
        
        if !orangized_pigeons[name][key]
            orangized_pigeons[name][key] = []
        end 
        
        orangized_pigeons[name][key].push(value_2.to_s)
      end   
    end
  end  
  return orangized_pigeons
end


#go through each key value pair, grab the value, and set it as the key in a new hash 
