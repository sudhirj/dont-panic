require 'spec_helper'

describe Admin do
  it {should belong_to(:office)}
  it {should belong_to(:contact)}
end
