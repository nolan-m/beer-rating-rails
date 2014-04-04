class Beer < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :price, :presence => true
  validates :abv, :presence => true
  belongs_to :region
  belongs_to :type
  has_and_belongs_to_many :ratings
  after_save :slugify

  def save_score
    total = 0
    self.ratings.each { |r| total += r.score }
    self.update(total_rating: (total/self.ratings.size))
  end

  private
    def slugify
      self.slug = self.name.parameterize
      self.update_column(:slug, self.slug)
    end
end
