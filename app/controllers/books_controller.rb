require './lib/elastic/book'
class BooksController < ApplicationController
  def search
    if params[:search]
      @results = Elastic::Book.new.search_by_description(@word)
    else
      redirect_to root_path
    end
  end
end
