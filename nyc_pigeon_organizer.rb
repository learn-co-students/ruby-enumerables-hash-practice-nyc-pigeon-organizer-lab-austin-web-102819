def nyc_pigeon_organizer(pigeon_data)
  x = {}
  pigeon_data.each { |attributes, sub_attributes|
  sub_attributes.each { |hash, values|
  values.each { |name|

  if !x.include?(name)
    x[name] = {}
  end

  if !x[name].include?(attributes)
    x[name][attributes] = []
  end

  if !x[name][attributes].include?(hash)
    x[name][attributes] << hash.to_s
  end
      }
    }
  }
  x
end
