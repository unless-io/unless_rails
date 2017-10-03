class Blog < ApplicationRecord
  belongs_to :user

  def to_param
    publishing_date.strftime('%d-%m-%Y')
  end
end
