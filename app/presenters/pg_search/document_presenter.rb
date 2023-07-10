# frozen_string_literal: true

module PgSearch
  class DocumentPresenter < BasePresenter
    related_to :searchable
    build_with :content, :searchable_id, :searchable_type, :resource_url

    def resource_url
      polymorphic_url(model.searchable)
    end
  end
end
