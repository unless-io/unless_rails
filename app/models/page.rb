class Page < ApplicationRecord
  has_many :sections, dependent: :destroy
end
