class UsersController < ApplicationController
  def index
    user = current_user
    @myfav = user.likes
    
  end
end
