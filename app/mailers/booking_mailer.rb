class BookingMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.booking_mailer.received.subject
  #
  def received(booking)
    @booking = booking
    @greeting = "Hello"

    mail(to: "rph.hung@gmail.com", subject: "Your booking request has been sent")
    # mail(to: @booking.user.email, subject: "Your booking request has been sent")
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.booking_mailer.response.subject
  #
  def response(booking)
    @booking = booking
    @greeting = "Hello"

    mail(to: "rph.hung@gmail.com", subject: "Your Space has a new booking!")
    # mail(to: @booking.space.user.email , subject: "Your Space has a new booking!")
  end

  def receipt(booking)
    @booking = booking

    mail(to: "rph.hung@gmail.com", subject:"Payment Receipt")
    # mail(to: @booking.user.email, subject:"Payment Receipt")
  end

end
