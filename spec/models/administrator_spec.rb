require 'spec_helper'

describe Administrator do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:phone_numbers) }
  it { should belong_to(:office) }
end
