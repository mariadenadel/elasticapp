require './lib/elastic/search_book'

class BooksController < ApplicationController
  def index
    if params[:search][:q] && params[:search][:field]
      @results = Elastic::SearchBook.new.search_by(params[:search][:q], params[:search][:field])
    end
  end
end
