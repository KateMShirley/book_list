class BooksController < ApplicationController

  before_filter :authorize

  #get
  def index
    @books =  Book.where(:user_id => session[:user_id].to_i)
  end

  #get
  def new
    @book = Book.new
  end

  #post
  def create
    #hand the form submission and add to the database
    @book.create(
      :title => 'The Sun Also Rises',
      :author => 'Ernest Hemingway',
      :genre => 'Novel',
      :description => 'A book by Ernie'
    )
  end

  #post request
  def update
  end

  #patch
  def delete
    @product.find(1).destroy
  end

  #get
  def confirmation
    #catch-all confirmation
  end
end
