class PagesController < ApplicationController
  def home
    page = helpers.set_page('home')
    @left = helpers.set_section(page, "left")
    @right = helpers.set_section(page, "right")
  end

  def contact
  end
end
