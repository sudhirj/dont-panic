class City < ActiveRecord::Base
  belongs_to :country
  has_many :places
  has_many :offices

  validates_presence_of :name

  def companies
    offices.inject([]) do |memo, office|
      company = memo.find {|c| c[:id] == office.company.id }
      if company.nil?
        company = {id: office.company.id, name: office.company.name, offices: []}
        memo << company
      end
      company[:offices] << office
      memo
    end
  end

  def place_types
    places.inject([]) do |memo, place|
      place_type = memo.find {|c| c[:id] == place.place_type.id }
      if place_type.nil?
        place_type = {id: place.place_type.id, name: place.place_type.name, places: []}
        memo << place_type
      end
      place_type[:places] << place
      memo
    end
  end
end
