class PlayerSerializer < ActiveModel::Serializer
  belongs_to :club
  attributes :id, :name, :birthday, :url
  def url
    Rails.application.routes.url_helpers.player_url(object, host: "localhost:3000")
    #player_url(object, host: "localhost:3000")
  end
end
