require 'spec_helper'

describe Address do
  it {should validate_presence_of(:address_line_1)}
end
