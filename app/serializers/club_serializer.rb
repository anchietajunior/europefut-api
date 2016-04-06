class ClubSerializer < ActiveModel::Serializer
  attributes :id, :country, :name
  has_many :players
end
