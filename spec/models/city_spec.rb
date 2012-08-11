require 'spec_helper'

describe City do
  it {should validate_presence_of(:name)}
  it {should belong_to(:country)}
  it {should have_many(:offices)}
  it {should have_many(:hotspots)}
end
