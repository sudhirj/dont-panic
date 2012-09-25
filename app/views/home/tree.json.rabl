collection @countries
attributes :name, :code

child :cities => :cities do
  object false
  attributes :name

  child :companies => :companies do    
    node(:name) {|company| company[:name]}    
    node(:offices) do |company| 
      company[:offices].map do |office|
        {
          name: office.name, 
          address: office.address,
          admins: office.administrators.map {|admin| {name: admin.name, number: admin.phone_numbers}},
          map: office.map

        }
      end
    end
  end  

  child :place_types => :placeTypes do
    node(:name) {|place_type| place_type[:name]}
    node(:places) do |place_type| 
      place_type[:places].map do |place|
        {
          name: place.name, 
          address: place.address,
          map: place.map
        }
      end
    end
  end
end