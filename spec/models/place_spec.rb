require 'spec_helper'

describe Place do
  it { should validate_presence_of(:name) }
  it { should belong_to(:city) }
  it { should belong_to(:place_type) }
end
