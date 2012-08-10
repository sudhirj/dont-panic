require 'spec_helper'

describe Office do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:address) }
  it { should belong_to(:company) }
  it { should belong_to(:city) }
end
