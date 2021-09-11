require 'open-uri'
class ApplicationController < ActionController::Base
  def index
    request_star_money
    render plain: :ok
  end

  private

  def request_star_money
    URI.open('http://star-money.herokuapp.com?request_type=cron')
  end
end
