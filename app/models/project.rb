class Project < ApplicationRecord
  has_many :project_images
  has_many :project_resources

  def to_param
    title.downcase.gsub(/\W/, "-")
  end
end
