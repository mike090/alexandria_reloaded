# frozen_string_literal: true

class PurchasesController < ApplicationController
  before_action :authenticate_user
  before_action :authorize_action, only: %i[show create]

  def index
    purchases = orchestrate_query(policy_scope(Purchase))
    render serialize(purchases)
  end

  def show
    render serialize(purchase)
  end

  def create
    new_purchase = Purchase.new(purchase_params)
    if new_purchase.save
      render serialize(new_purchase).merge(status: :created, location: new_purchase)
    else
      unprocessable_entity!(new_purchase)
    end
  end

  private

  def purchase
    @purchase ||= Purchase.find(params[:id])
  end

  alias resource purchase

  def purchase_params
    @purchase_params ||= params.require(:data).permit(:book_id, :token).merge(user_id: current_user.id)
  end
end
