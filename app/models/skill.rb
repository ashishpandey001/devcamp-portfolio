# Skill model to interact with the skills table
class Skill < ApplicationRecord
  validates :title, :percent_utilized, presence: true
end
