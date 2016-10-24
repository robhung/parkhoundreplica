class BookingsController < ApplicationController
	before_action :authenticate_user!

	def index
		@bookings = current_user.bookings
	end

	def show
		@space = Space.find(params[:space_id])
	end

	def preload
		space = Space.find(params[:space_id])
		today = Date.today
		bookings = space.bookings.where("start_date >= ? OR end_date >= ?", today, today)

		render json: bookings
	end

	def preview
		start_date = Date.parse(params[:start_date])
		end_date = Date.parse(params[:end_date])

		output = {
			conflict: is_conflict(start_date, end_date)
		}

		render json: output
	end

	def create
		@booking = current_user.bookings.create(booking_params)

		redirect_to bookings_path, notice: "Your booking has been created! Please review and pay when ready."
	end

	def destroy
		@booking = Booking.find(params[:id])

		@booking.destroy
		respond_to do |format|
			format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	private

		# Use callbacks to share common setup or constraints between actions.

		def is_conflict(start_date, end_date)
			space = Space.find(params[:space_id])

			check = space.bookings.where("? < start_date AND end_date < ?", start_date, end_date)
			check.size > 0? true : false
		end

		def booking_params
			params.require(:booking).permit(:start_date, :end_date, :price, :total, :space_id)
		end
end
