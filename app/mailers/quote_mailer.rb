# frozen_string_literal: true

class QuoteMailer < ApplicationMailer
  default from: 'collection@translantics.com'

  def new_quote
    @quote = params[:quote]
    mail(to: @quote.quoter.email, subject: "Your quote(#{@quote.total_gross_weight} Kg) has been received")
  end

  def admin_email
    @quote = params[:quote]
    mail(to: @quote.quoter.email, subject: 'A new quote has been received')
  end
end
