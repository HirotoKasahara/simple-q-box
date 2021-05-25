class Question < ApplicationRecord
   is_impressionable counter_cache: true
   
   validates :content,length: {maximum: 255}
  
  belongs_to :user
   
  has_many :answers
end
