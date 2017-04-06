# Blog model to interact with the blogs table
class Blog < ApplicationRecord
  extend FriendlyId
  belongs_to :topic
  has_many :comments, dependent: :destroy
  enum status: { draft: 0, published: 1 }
  friendly_id :title, use: :slugged

  validates :title, :body, presence: true

  def self.all_blogs
    all
  end

  def self.recently_created_blogs
    order('created_at DESC').per(5)
  end
end
