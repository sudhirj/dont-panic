require 'spec_helper'

describe City do
  it {should validate_presence_of(:name)}
  it {should belong_to(:country)}
end
