class Section < ApplicationRecord
  belongs_to :page

  has_many :headers, dependent: :destroy
  has_many :text_areas, dependent: :destroy
  has_many :image_media, dependent: :destroy
  has_many :video_media, dependent: :destroy
  has_many :resource_links, dependent: :destroy
end
