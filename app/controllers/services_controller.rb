class ServicesController < ApplicationController

  def show
    @sidebar_items = %w(overview mvp sprints digital-consulting)
  end

  def mvp
  end

  def digitalconsulting
  end

  def sprints
  end
end
