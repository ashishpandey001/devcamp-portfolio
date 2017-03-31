# Blog model to interact with the blogs table
class Blog < ApplicationRecord
  extend FriendlyId
  belongs_to :topic
  enum status: { draft: 0, published: 1 }
  friendly_id :title, use: :slugged

  validates :title, :body, presence: true

  def self.special_blogs
    all
  end

  def self.featured_blogs
    limit(2)
  end
end
