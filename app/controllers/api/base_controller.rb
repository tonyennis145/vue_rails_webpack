class Api::BaseController < ApplicationController
 
  # before_filter :authenticate_user!
  protect_from_forgery with: :null_session

end
