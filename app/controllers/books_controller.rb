# frozen_string_literal: true

class BooksController < ApplicationController
  def index
    books = orchestrate_query(Book.all)
    serializer = Alexandria::Serializer.new(data: books,
                                            params: request.query_parameters,
                                            actions: %i[pick_fields pick_embeds])
    render json: serializer.to_json
  end
end
