class SearchesController < ApplicationController


  def create
  #  @search = Search.new(params.require(:search).permit(:info))
  #  @search.user = current_user
   Search.check_to_twitter(current_user, params.require(:search).permit(:info))
    #  if @search.save
    #    id = Search.last.id

       id = Searchquery.last.id
       redirect_to searchqueries_show_path(id)
    #  else
    #    redirect_to search_path, alert: 'try again!'
    #  end
  end

  def index
    @search = Search.new
  end

  def show



  end

end
