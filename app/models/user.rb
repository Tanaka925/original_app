class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname,         presence: true
  validates :first_name_kanji, presence: true
  validates :last_name_kanji,  presence: true
  validates :first_name_kana,  presence: true
  validates :last_name_kana,   presence: true
  validates :birthday,         presence: true

  with_options presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/, message: '全角文字を使用してください' } do
    validates :first_name_kanji
    validates :last_name_kanji
  end

  with_options presence: true, format: { with: /\A[ァ-ヶー]+\z/, message: 'カタカナを使用してください' } do
    validates :first_name_kana
    validates :last_name_kana
  end

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i
  validates_format_of :password, with: PASSWORD_REGEX, message: 'には半角の英字と数字の両方を含めて設定してください'

  has_many :arts, dependent: :destroy
  has_many :comments
  has_many :artists, dependent: :destroy
end
