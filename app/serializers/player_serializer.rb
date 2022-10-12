class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :position, :coach_id, :sport_id
end
