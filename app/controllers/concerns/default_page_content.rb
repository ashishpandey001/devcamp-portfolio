# Module to set default page content
module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = 'DevCamp Portfolio | My Portfolio Website'
    @seo_keywords = 'Jordan Hudgens portfolio'
  end
end
