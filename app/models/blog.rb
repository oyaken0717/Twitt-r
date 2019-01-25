class Blog < ApplicationRecord
    # validates :title, length: {in: 1..140} 
    validates :content, length: { maximum: 140 } 
    validates :content, presence: true  
    
end
