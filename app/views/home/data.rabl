object false
child @countries do
   attributes :name, :code, :updated_at
end
child @cities do
    attributes :name, :country_id
end
child @companies do
    attributes :name
end
child @administrators do
    attributes :name,:phone_numbers, :office_id
end
child @offices do
    attributes :company_id, :city_id, :name, :address, :longitude, :latitude, :phone_numbers
end
child @places do
    attributes :name, :description, :address, :longitude, :latitude, :phone_numbers, :place_type_id
end