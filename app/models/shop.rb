class Shop < ApplicationRecord
    has_many :comments
    
    validates :itemName, presence: true
    validates :description, presence: true, length: { minimum: 10 }
    validates :itemPrice, presence: true
end
