# frozen_string_literal: true

class SearchController < ApplicationController
  def index
    @text = params[:text]
    scope = PgSearch.multisearch(@text).includes(:searchable)
    documents = orchestrate_query(scope)
    embed_page_navigation(documents)
    render serialize(documents).merge(status: :ok)
  end
end
