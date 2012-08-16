require 'spec_helper'

describe Administrator do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:contact_details) }
  it { should belong_to(:office) }
end
