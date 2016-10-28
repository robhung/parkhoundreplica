class ChargesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_booking, :require_same_id, only: [:new, :create]

  def new

  end

  def create
    # Amount in cents
    @amount = params[:stripeAmount]

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Parkhound Customer',
      :currency    => 'aud'
    )

    if charge[:paid]
      #BookingMailer.receipt(@booking).deliver_now
      @booking.update_attribute(:confirmation, true)
    end

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_charge_path
    flash[:notice] = "Please try again!"
  end

  private

    def set_booking
      @booking = Booking.find(params[:booking_id])
    end

    def require_same_id
      if current_user.id != @booking.user.id
        flash[:alert]= "You are not allowed to access this page."

        redirect_to root_path
      end
    end
end
