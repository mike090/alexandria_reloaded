# frozen_string_literal: true

class PurchasesController < ApplicationController
  before_action :authenticate_user
  before_action :authorize_action, only: :show

  def index
    purchases = orchestrate_query(policy_scope(Payment.confirmed))
    render serialize(purchases)
  end

  def show
    render serialize(purchase)
  end

  private

  def purchase
    @purchase ||= Payment.confirmed.find(params[:id])
  end

  alias resource purchase
end
