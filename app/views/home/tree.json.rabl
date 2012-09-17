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
          admins: office.administrators.map {|admin| {name: admin.name, number: admin.phone_numbers}}
        }
      end
    end
  end  
end