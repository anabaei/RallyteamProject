class SearchqueriesController < ApplicationController

  def show
      # to search all results from this search action
      searchqueries = Searchquery.find(params[:format])
      # based on the search action, then find all result related to this search
      @result = Rawresult.where :searchquery_id => searchqueries.id
  end

  def index
  end
end
