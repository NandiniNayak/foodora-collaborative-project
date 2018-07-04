class ChargesController < ApplicationController
  before_action :set_menu, only: %i[new show edit update destroy]

  def new
    @amount = @menu.price
  end

  def create

    # Amount in cents
    @amount = params[:price].to_i * 100

    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @amount,
      description: 'Test',
      currency: 'aud'
    )
    ModelMailer.new_receipt_notification.deliver_now
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_menu
    @menu = Menu.find(params[:menu_id])
  end

  def menu_params
    params.require(:menu).permit(:name, :picture, :ingredients, :quantity, :price, :restaurant_id)
  end
end
