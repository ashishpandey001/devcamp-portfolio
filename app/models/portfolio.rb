# Portfolio model to interact with the portfolios table
class Portfolio < ApplicationRecord
  validates :title, :body, :main_image, :thumb_image, presence: true
end
