require './lib/elastic/search_book'
class BooksController < ApplicationController
  def search
    if params[:search][:q] && params[:search][:field]
      @results = Elastic::SearchBook.new.search_by(params[:search][:q], params[:search][:field])
    else
      redirect_to root_path
    end
  end
end
