class Sport < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    has_many :players 
    has_many :coaches, through: :players 
end
