# frozen_string_literal: true

class BooksController < ApplicationController
  before_action :authenticate_user, only: %i[create update destroy]
  before_action :authorize_action

  def index
    books = orchestrate_query(Book.all)
    embed_page_navigation(books)
    render serialize(books)
  end

  def show
    render serialize(book)
  end

  def create
    new_book = Book.new(book_params)
    if new_book.save
      render serialize(new_book).merge(status: :created, location: new_book)
    else
      unprocessable_entity!(new_book)
    end
  end

  def update
    if book.update(book_params)
      render serialize(book).merge(status: :ok)
    else
      unprocessable_entity!(book)
    end
  end

  def destroy
    book.destroy
    render status: :no_content
  end

  private

  def book
    @book ||= Book.find(params[:id])
  end

  alias resource book

  def book_params
    params.require(:data).permit(:title, :subtitle, :isbn_10, :isbn_13,
                                 :description, :released_on, :publisher_id,
                                 :author_id, :cover, :price_cents, :price_currency)
  end
end
