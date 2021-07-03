class Blogpost < ApplicationRecord
  has_many_attached :images
  has_rich_text :content

  validates :post_title, presence: true, length: { maximum: 60 }

  default_scope -> { order(created_at: :desc) }
end
