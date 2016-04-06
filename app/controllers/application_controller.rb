class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  include ActionController::RequestForgeryProtection
  include ActionController::Serialization
  protect_from_forgery with: :null_session
end
