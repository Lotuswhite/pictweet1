class Tweet < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :info

  validates :text, :day, :info, presence: true

  validates :info_id, numericality: { other_than: 0 }

  # Association
  belongs_to :user
  has_many :comments

end
