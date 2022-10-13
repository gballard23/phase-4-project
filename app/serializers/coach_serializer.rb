class CoachSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :title
  has_many :players
  has_many :sports, through: :players 
end
