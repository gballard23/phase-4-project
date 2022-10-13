class Coach < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true 
    validates :title, presence: true 
    has_many :players
    has_many :sports, through: :players 
end
