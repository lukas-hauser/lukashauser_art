class Artwork < ApplicationRecord
  has_many_attached :images

  validates :listing_name, presence: true, length: { maximum: 60 }
  validates :tags, presence: true, length: { maximum: 60 }
  validates :description, length: { maximum: 1000 }
  validates :category, presence: true, length: { maximum: 60 }
  validates :year, presence: true, numericality: { only_integer: true }
  validates :medium, length: { maximum: 60 }
  validates :height, numericality: { only_float: true, greater_than: 0, allow_blank: true }
  validates :width, numericality: { only_float: true, greater_than: 0, allow_blank: true }

  default_scope -> { order(created_at: :desc) }
end
