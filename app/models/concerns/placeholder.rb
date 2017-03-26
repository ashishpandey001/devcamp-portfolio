# Shared concern to set default images across models
module Placeholder
  extend ActiveSupport::Concerns

  def self.image_generator(height:, width:)
    "http://placehold.it/#{height}x#{width}"
  end
end
