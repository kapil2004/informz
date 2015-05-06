class NumbersController < ApplicationController
  
  def index
    @numbers = 1..100
  end
  
  def fizzbuzz
    num = params[:num].to_i
    if num%3 == 0 && num%5 == 0
      render text: 'FizzBuzz', status: 200
    elsif num%3 == 0
      render text: 'Fizz', status: 200
    elsif num%5 == 0
      render text: 'Buzz', status: 200
    else
      render text: '', status: 200
    end
  end
  
end