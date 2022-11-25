class Platform < ApplicationRecord
  has_many :ratings
  before_create :slugify

  def slugify
    self.slug = name.parameterize
  end

  def avg_score
    ratings.average(:score).round(2).to_f
  end
end
