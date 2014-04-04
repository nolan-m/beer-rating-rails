require 'spec_helper'

describe Rating do
  it { should have_and_belong_to_many :beers }
  it { should validate_presence_of :score }
  it { should validate_presence_of :review }
end
