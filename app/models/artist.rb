class Artist < ApplicationRecord
  validates :artist_name,         presence: true
  validates :birthday,            presence: true

  belongs_to :user

  def age
    return if birthday.nil?
    now = Time.zone.now
    age = now.year - birthday.year
    age -= 1 if now.yday < birthday.yday # 誕生日がまだ来ていなければ1歳引く
    age
  end

  # アクティブハッシュ
  # self.data = [
  #   { 'id': 1, 'name': '---' },
  #   { 'id': 2, 'name': 'いちか' },
  #   { 'id': 3, 'name': 'にこ' },
  #   { 'id': 4, 'name': 'さんたろう' }
  # ]

  # include ActiveHash::Associations
  # has_many :art
  # /アクティブハッシュ
end
