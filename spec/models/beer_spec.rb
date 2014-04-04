require 'spec_helper'

describe Beer do
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }
  it { should validate_presence_of :price }
  it { should validate_presence_of :abv }
  it { should belong_to :region }
  it { should belong_to :type }
  it { should have_and_belong_to_many :ratings }

  it "should update the slug after it saves" do
    test_beer = Beer.new(:name => "Bridgeport IPA", :price => 6.99, :abv => 5.6)
    test_beer.save
    test_beer.slug.should eq "bridgeport-ipa"
  end
end
