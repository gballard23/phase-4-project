class SportSerializer < ActiveModel::Serializer
  attributes :id, :name 
  has_many :players
  has_many :coaches, through: :players 
end
