class SearchController < ApplicationController
  include ApplicationHelper

  def index
    @members = SearchFacade.get_members(params[:nation])
  end
end
