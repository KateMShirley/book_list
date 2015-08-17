class BooksController < ApplicationController

  before_filter :authorize

  #get
  def index
    #render a list
  end

  #get
  def new
    #displays a form to create a new book
  end

  #post
  def create
    #hand the form submission and add to the database
  end

  #post request
  def update
  end

  #patch
  def delete
  end

  #get
  def confirmation
    #catch-all confirmation
  end
end
