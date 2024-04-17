class Art < ApplicationRecord
  validates :image,                 presence: true
  validates :art_name,              presence: true
  validates :artist_id,             presence: true, numericality: { other_than: 1, message: "can't be blank" }
  validates :work_id,               presence: true, numericality: { other_than: 1, message: "can't be blank" }

  belongs_to :user
  has_one_attached :image
  has_many :comments
  belongs_to :artist

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :work
end
