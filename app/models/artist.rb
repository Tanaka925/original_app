class Artist < ApplicationRecord
  validates :artist_name,         presence: true
  validates :birthday,            presence: true

  belongs_to :user

  # アクティブハッシュ
  self.data = [
    { 'id': 1, 'name': '---' },
    { 'id': 2, 'name': 'いちか' },
    { 'id': 3, 'name': 'にこ' },
    { 'id': 4, 'name': 'さんたろう' }
  ]

  include ActiveHash::Associations
  has_many :art
  # /アクティブハッシュ
end
