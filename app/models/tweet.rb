class Tweet < ApplicationRecord
  validates :text, presence: true
  validates :day, presence: true


  belongs_to :user
  has_many :comments  #commentsテーブルとのアソシエーション

end
