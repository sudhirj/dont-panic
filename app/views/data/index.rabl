object false
child @countries do
   attributes *Country.column_names
end
child @cities do
    attributes *City.column_names
end
child @companies do
    attributes *Company.column_names
end
child @administrators do
    attributes *Administrator.column_names
end
child @offices do
    attributes *Office.column_names
end
child @places do
    attributes *Place.column_names
end
child @place_types do
     attributes *PlaceType.column_names
end
