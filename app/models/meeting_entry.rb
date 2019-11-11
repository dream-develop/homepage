class MeetingEntry < ApplicationRecord
  belongs_to :meeting

  validates :family_name, presence: true
  validates :first_name, presence: true
  validates :family_kana, presence: true
  validates :first_kana, presence: true
  validates :phone, presence: true
  validates :email, presence: true
  validates :agreement, acceptance: true
end
