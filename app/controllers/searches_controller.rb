class SearchesController < ApplicationController


  def create
   @search = Search.new(params.require(:search).permit(:info))
   @search.user = current_user
   @search.searchkey = Search.check_to_twitter(current_user, params.require(:search).permit(:info))
   @search.save
   byebug
  end

  def index
    @search = Search.new
  end
end
