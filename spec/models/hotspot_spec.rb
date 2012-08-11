require 'spec_helper'

describe Hotspot do
  it { should belong_to(:city) }
  it { should belong_to(:location) }
  it { should belong_to(:contact) }

  Hotspot::TYPES.values.each do |type|
    it { should allow_value(type).for(:type) }
  end
  it {should_not allow_value("ooga").for(:type)}
end
