class Cake < ApplicationRecord
  belongs_to :user
  
  
  
  validates :try ,length: {maximum: 255}
  validates :content,length: {maximum: 255}
  validates :impression,length: {maximum: 255}
  

  
  private
  def once_a_day
      if current_user.cakes.exists?(created_at: Time.zone.now.all_day)
          errors.add(:time,'重複しています')
      end 
  end 
end
