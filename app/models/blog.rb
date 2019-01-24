class Blog < ApplicationRecord
    # validates :title, length: {in: 1..140} 
    validates :title, length: { maximum: 140 } 
    validates :title, presence: true 
    
end
