class Art < ApplicationRecord
  validates :image,                 presence: true
  validates :art_name,              presence: true
  validates :workday,               presence: true

  has_one_attached :image

  belongs_to :user
  belongs_to :artist
  has_many :comments, dependent: :destroy

  # extend ActiveHash::Associations::ActiveRecordExtensions
  # belongs_to :work
end
