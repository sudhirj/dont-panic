# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

india = Country.find_or_create_by_code 'IN', name: 'India'
usa = Country.find_or_create_by_code 'US', name: 'United States'
uk = Country.find_or_create_by_code 'GB', name: 'United Kingdom'

City.create name: 'Chennai', country: india
City.create name: 'Bangalore', country: india
City.create name: 'Pune', country: india
City.create name: 'Gurgaon', country: india

City.create name: 'Chicago', country: usa
City.create name: 'New York', country: usa
City.create name: 'Atlanta', country: usa
