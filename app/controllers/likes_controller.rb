class LikesController < ApplicationController
  before_action :find_rawresult, only: [:create]
  before_action :find_like, only: [:destroy]

  def create
    like = Like.new user: current_user, rawresult: @rawresult

    if like.save
     redirect_to users_index_path, notice: 'Thanks for liking!'
    else
     flash[:alert] = like.errors.full_messages.join(', ')
    end
  end

  def destroy
    if @like.destroy
    redirect_to users_index_path,  notice: '😕'
    else
    redirect_to users_index_path,  alert: @like.errors.full_messages.join(', ')
    end
  end

  private
  def find_rawresult
    @rawresult = Rawresult.find(params[:rawresult_id])
  end

end
