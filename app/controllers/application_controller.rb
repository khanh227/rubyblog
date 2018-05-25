class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  @name = '123'
  @password = '123'
end
