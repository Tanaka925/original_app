class Artist < ApplicationRecord
  validates :artist_name,         presence: true
  validates :birthday,            presence: true

  belongs_to :user
  has_many :arts, dependent: :destroy

  def age
    return if birthday.nil?

    now = Time.zone.now
    age = now.year - birthday.year
    age -= 1 if now.yday < birthday.yday # 誕生日がまだ来ていなければ1歳引く
    age
  end
end
