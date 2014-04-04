class Rating < ActiveRecord::Base
  has_and_belongs_to_many :beers
  validates :score, :presence => true
  validates :review, :presence => true
end
