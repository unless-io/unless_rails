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

  def secondary_nav_items
    {
    "services" => 
      {
        "MVP" => mvp_services_url, 
        "Workshops" => workshops_services_url, 
        "Sprints" => sprints_services_url
      },
    "portfolios" => 
      {
        "Projects" => portfolio_projects_url,
        "Partnerships" => portfolio_partnerships_url
      },
    "abouts" => 
      {
        "Blog" => about_blog_index_url, 
        "Method" => method_about_url, 
        "Contact" => contact_about_url
      },
      "projects" => 
      {
        "Projects" => portfolio_projects_url,
        "Partnerships" => portfolio_partnerships_url
      },
      "partnerships" => 
      {
        "Projects" => portfolio_projects_url,
        "Partnerships" => portfolio_partnerships_url
      },
      "blog" => 
      {
        "Blog" => about_blog_index_url, 
        "Method" => method_about_url, 
        "Contact" => contact_about_url
      }
    } 
  end
end
