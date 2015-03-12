class PublicController < ApplicationController
  before_filter :logged_user

  def index
  end

  def logged_user
  	if user_signed_in?
  		redirect_to private_index_path
	end  	
  end


end
