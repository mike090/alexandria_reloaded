# frozen_string_literal: true

class DownloadsController < ApplicationController
  before_action :authenticate_user

  def show
    authorize book, policy_class: BookDownloadPolicy
    render status: :no_content, location: book.download_url
  end

  private

  def book
    @book ||= Book.find(params[:book_id])
  end
end
