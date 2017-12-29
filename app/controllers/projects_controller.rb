class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def show
    @projects = YAML.load(File.open("#{Rails.root}/db/data/projects.yml"))
    @project = @projects.detect { |project| project["url"] == params["title"] }
  end

end
