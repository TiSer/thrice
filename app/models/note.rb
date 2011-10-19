class Note < ActiveRecord::Base
  
  belongs_to :user
  self.per_page = 10

end
