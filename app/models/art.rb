class Art < ApplicationRecord
  validates :image,                 presence: true
  validates :art_name,              presence: true
  validates :work_id,               presence: true, numericality: { other_than: 1, message: "can't be blank" }

  has_one_attached :image

  belongs_to :user
  belongs_to :artist
  has_many :comments, dependent: :destroy

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :work
end
