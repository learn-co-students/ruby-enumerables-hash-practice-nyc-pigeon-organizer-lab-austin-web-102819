def nyc_pigeon_organizer(data)

  names = []
  final_hash = {}

  data.each do |attribute, items|
    items.each do |feature, arr|
      arr.each do |name|
        names << name if !names.include?(name)
      end
    end
  end
  
  names.each do |called_by|
    final_hash[called_by] = Hash.new {|k, v| k[v] = []}
    data.each do |attribute, items|
      final_hash[called_by][attribute]
      items.each do |feature, arr|
        arr.each do |name|
          final_hash[name][attribute] << feature.to_s if name == called_by
        end
      end
    end
  end
  
  final_hash

end