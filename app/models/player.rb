class Player < ApplicationRecord
    validates :first_name, presence: true 
    validates :last_name, presence: true
    belongs_to :sport
    belongs_to :coach 
end
