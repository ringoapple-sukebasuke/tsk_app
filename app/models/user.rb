class User < ApplicationRecord
    validates :title, presence: true
    validates :start, presence: true
    validates :end, presence: true

    validate :date_before_start


  def date_before_start
    return if start_was.blank?
    errors.add(:start_day, "は今日以降のものを選択してください") if start_day < Date.today
  end
end