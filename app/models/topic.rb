# Topic model to manage the topics table
class Topic < ApplicationRecord
  has_many :blogs
  validates :title, presence: true
end
