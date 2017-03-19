# Blog model to interact with the blogs table
class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
end
