def nyc_pigeon_organizer(data)
  
  results = data.each_with_object({}) do |(key, value), pigeon_list|
    value.each do |inner_key, names|
      names.each do |name|
        if !pigeon_list[name]
          pigeon_list[name] = {}
        end
        if !pigeon_list[name][key]
          !pigeon_list[name][key] = []
        end
        pigeon_list[name][key].push(inner_key.to_s)
      end
    end
  end
end



#create a new empty hash
#go thry pigeon data
#create keys under names
#if name equals 
#  then get color , gender and lives
#end 
 #pigeon_list[:name => pigeon_data[:gender][:male]]