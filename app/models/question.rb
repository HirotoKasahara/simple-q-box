class Question < ApplicationRecord
   is_impressionable counter_cache: true
  
  belongs_to :user
   
  has_many :answers
end
