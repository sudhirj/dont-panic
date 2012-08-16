require 'spec_helper'

describe PlaceType do
  it { should validate_presence_of(:name) }
end
