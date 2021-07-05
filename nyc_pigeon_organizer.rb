def nyc_pigeon_organizer(data)
  new_hash={}
  data.each do |color_gender_live, value| 
    value.each do |stats, names|
      names.each do |name|
        if !new_hash[name]
          new_hash[name] = {}
        end
        if !new_hash[name][color_gender_live]
          new_hash[name][color_gender_live]=[]
        end
      new_hash[name][color_gender_live].push(stats.to_s)    
    end
    end
  end
  new_hash
end
