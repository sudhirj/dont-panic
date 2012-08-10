require 'spec_helper'

describe Country do
  it { should validate_presence_of(:name) }
  it { should have_many(:cities) }
end
