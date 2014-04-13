require 'spec_helper'

describe Brewery do
	it { should validate_presence_of :name }
	it { should validate_uniqueness_of :name }
	it { should have_many :beers }
	it { should belong_to :region }


  it "should update the slug after it saves" do
    test_brewery = Brewery.new(:name => "Odell")
    test_brewery.save
    test_brewery.slug.should eq "odell"
  end
end
