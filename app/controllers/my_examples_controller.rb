class MyExamplesController < ApplicationController
  def random
    fortunes = [
      "Please try again",
      "You will find great fortune",
      "Bad fortune for you and the next 10 generations of your family"
    ]
    render json: fortunes.sample
  end
  def lotto_numbers
    winners = []
    6.times do
      winners << rand(0..61)
    end

    render json: winners
  end
end
