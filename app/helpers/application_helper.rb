module ApplicationHelper
  def login_helper(style = '')
    if current_user.is_a?(GuestUser)
      (link_to 'Register', new_user_registration_path, class: "#{style} #{active? new_user_registration_path}") + ' ' + (link_to 'Log In', new_user_session_path, class: "#{style} #{active? new_user_session_path}")
    else
      link_to 'Logout', destroy_user_session_path, method: :delete, class: style
    end
  end

  def source_helper(layout_name)
    greeting = "Thanks for visiting me via #{session[:source]}, You're seeing the #{layout_name} layout"
    content_tag(:p, greeting, class: 'source-greeting') if session[:source]
  end

  def copyright_generator
    Hmaster0ViewTool::Renderer.copyright('Ashish Pandey', 'All rights reserved')
  end

  def nav_items
    [
      {
        url: root_path,
        title: 'Home'
      },
      {
        url: about_me_path,
        title: 'About Me'
      },
      {
        url: contact_path,
        title: 'Contact'
      },
      {
        url: blogs_path,
        title: 'Blog'
      },
      {
        url: portfolios_path,
        title: 'Portfolio'
      },
      {
        url: tech_news_path,
        title: 'Tech News'
      }
    ]
  end

  def nav_helper(style, tag_type)
    nav_links = ''
    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end
    safe_join([nav_links.html_safe])
  end

  def active?(path)
    'active' if current_page? path
  end

  def alerts
    flash_alert = (flash[:alert] || flash[:error] || flash[:notice])
    alert_generator(flash_alert)
  end

  def alert_generator(msg)
    js add_gritter(msg, title: 'Ashish Pandey Portfolio', sticky: false)
  end
end
