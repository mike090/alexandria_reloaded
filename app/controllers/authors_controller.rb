# frozen_string_literal: true

class AuthorsController < ApplicationController
  def index
    authors = orchestrate_query(Author.all)
    embed_page_navigation(authors)
    render serialize(authors)
  end

  def show
    render serialize(author)
  end

  def create
    new_author = Author.new(author_params)
    if new_author.save
      render serialize(new_author).merge(status: :created, location: new_author)
    else
      unprocessable_entity!(new_author)
    end
  end

  def update
    if author.update(author_params)
      render serialize(author).merge(status: :ok)
    else
      unprocessable_entity!(author)
    end
  end

  def destroy
    author.destroy
    render status: :no_content
  end

  private

  def author
    @author ||= Author.find(params[:id])
  end

  def author_params
    params.require(:data).permit(:given_name, :family_name)
  end
end
