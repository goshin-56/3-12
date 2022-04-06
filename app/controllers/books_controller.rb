class BooksController < ApplicationController
  def index
    
  end
  
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path
    else
      render :index
    end
  end

  def show
    @book = Book.find(params[id])
  end

  def edit
  end
  
  private
  def book_params
    params.repuire(:book).permit(:title,:body)
  end
end