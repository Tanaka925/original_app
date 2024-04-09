class Art < ApplicationRecord
  validates :image,              presence: true
  validates :art_name,              presence: true
  validates :artist_id,              presence: true
  validates :work_id,              presence: true
  
  belongs_to :user
  has_one_attached :image
end
