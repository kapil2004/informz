require 'rails_helper'

describe NumbersController, type: :controller do
  
  describe '#index' do    
    it 'should be success' do
      get :index
      expect(assigns(:numbers)).to_not be nil
    end
  end
  

  describe '#fizzbuzz' do
    let(:multiple_of_3) { 9 }
    let(:multiple_of_5) { 20 }
    let(:multiple_of_3_and_5) { 30 }
    let(:multiple_of_neither_3_nor_5) { 7 }

    it "should render Fizz if number is multiple of 3 but not a multiple of 5" do
      get :fizzbuzz, {num: multiple_of_3}
      expect(response.body).to eq 'Fizz'
    end
    
    it "should render Buzz if number is multiple of 5 but not a multiple of 3" do
      get :fizzbuzz, {num: multiple_of_5}
      expect(response.body).to eq 'Buzz'
    end
    
    it "should render FizzBuzz if number is multiple of both 3 and 5" do
      get :fizzbuzz, {num: multiple_of_3_and_5}
      expect(response.body).to eq 'FizzBuzz'
    end
    
    it "should render an empty string if number is not a multiple of either 3 or 5" do
      get :fizzbuzz, {num: multiple_of_neither_3_nor_5}
      expect(response.body).to eq ''
      expect(response.body).to be_empty
    end

  end

end
