class Answer < ApplicationRecord
  belongs_to :question
  
  validates :content,length: {maximum: 255}
end
