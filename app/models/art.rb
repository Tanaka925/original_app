class Art < ApplicationRecord
  validates :image,                 presence: true
  validates :art_name,              presence: true
  validates :work_id,               presence: true, numericality: { other_than: 1, message: "can't be blank" }

  has_one_attached :image

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :artists

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :work
end
