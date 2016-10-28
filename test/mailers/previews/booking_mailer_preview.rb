# Preview all emails at http://localhost:3000/rails/mailers/booking_mailer
class BookingMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/booking_mailer/received
  def received
    BookingMailer.received
  end

  # Preview this email at http://localhost:3000/rails/mailers/booking_mailer/response
  def response
    BookingMailer.response
  end

end
