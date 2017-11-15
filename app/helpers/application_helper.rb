module ApplicationHelper
  def set_header(section, identifier)
    section.headers.find_by(identifier: identifier).content
  end

  def set_text_area(section, identifier)
    section.text_areas.find_by(identifier: identifier).content
  end

  def set_section(page, identifier)
    page.sections.find_by(identifier: identifier)
  end

  def set_page(identifier)
    Page.find_by(identifier: identifier)
  end

  def is_home?
    return true if params[:controller] == 'pages' && params[:action] == 'home'
  end
end
