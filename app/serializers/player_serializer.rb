class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :position, :coach_id, :sport_id
  belongs_to :sport
  belongs_to :coach
end
