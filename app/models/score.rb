class Score < ApplicationRecord

  belongs_to :user
  belongs_to :pokemon
  belongs_to :stage
  
end
