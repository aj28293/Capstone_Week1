class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #make the connection between controller ation and associated view
  include ActionController::ImplicitRender
end
