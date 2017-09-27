class LikesController < ApplicationController
  before_action :find_rawresult, only: [:create]


  def create

    like = Like.new user: current_user, rawresult: @rawresult

    if like.save
     redirect_to users_index_path, notice: 'Thanks for liking!'
    else
     flash[:alert] = like.errors.full_messages.join(', ')
    end
  end

  def destroy

   @like = Like.find_by rawresult_id: params[:rawresult_id]
    if @like.destroy
    redirect_to users_index_path,  notice: 'you removed one tweet from your fav list😕'
    else
    redirect_to users_index_path,  alert: @like.errors.full_messages.join(', ')
    end
  end

  private
  def find_rawresult
    @rawresult = Rawresult.find(params[:rawresult_id])
  end

end
