module ApplicationHelper
  def login_helper
    if current_user.is_a?(GuestUser)
      (link_to 'Register', new_user_registration_path) + tag(:br) + (link_to 'Log In', new_user_session_path)
    else
      link_to 'Logout', destroy_user_session_path, method: :delete
    end
  end

  def source_helper(layout_name)
    greeting = "Thanks for visiting me via #{session[:source]}, You're seeing the #{layout_name} layout"
    content_tag(:p, greeting, class: 'source-greeting') if session[:source]
  end

  def copyright_generator
    Hmaster0ViewTool::Renderer.copyright('Ashish Pandey', 'All rights reserved')
  end
end
