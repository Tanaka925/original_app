require 'date'

class Work < ActiveHash::Base
  start_date = Date.new(2010, 1)
  end_date = Date.new(2025, 12)

  data = (start_date..end_date).map do |date|
    next unless date.day == 1 # 月の最初の日だけを対象にする

    { id: date.strftime('%Y%m').to_i, name: date.strftime('%Y年%m月') }
  end.compact # nil を削除

  self.data = data

  include ActiveHash::Associations
  has_many :art
end
