class ApplicationController < ActionController::API
  # For ActiveModelSerializers
  include ActionController::Serialization
  # For devise
  include DeviseTokenAuth::Concerns::SetUserByToken
end
