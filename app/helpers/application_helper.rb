module ApplicationHelper


  def is_home_or_contact?
    return true if (params[:controller] == 'pages' && params[:action] == 'home') || (params[:controller] == 'pages' && params[:action] == 'contact')
  end
end
