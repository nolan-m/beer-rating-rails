class Region < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  has_many :breweries
  after_save :slugify

  private
    def slugify
      self.slug = self.name.parameterize
      self.update_column(:slug, self.slug)
    end
end
