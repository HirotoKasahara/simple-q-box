class Cake < ApplicationRecord
  belongs_to :user
  validate :once_a_day
  
  private
  
  def once_a_day
       if user.cakes.exists?(created_at: Time.zone.now.all_day)
        errors.add(:time,'重複してます')
      end 
  end 
end
