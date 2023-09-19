# frozen_string_literal: true

class BookDownloadPolicy < ApplicationPolicy
  def show?
    user.admin? || user.bought_book_ids.include?(record.id)
  end
end
