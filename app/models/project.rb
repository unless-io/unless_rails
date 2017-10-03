class Project < ApplicationRecord

  def to_param
    title.downcase.gsub(/\W/, "-")
  end
end
