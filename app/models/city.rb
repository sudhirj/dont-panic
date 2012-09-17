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
end
