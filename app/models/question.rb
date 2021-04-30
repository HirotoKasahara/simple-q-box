class Question < ApplicationRecord
  belongs_to :user
  has_many :answers,dependent: :destroy
  validates :content,presence: true, length: {maximum: 255}
  is_impressionable counter_cache: true
end
