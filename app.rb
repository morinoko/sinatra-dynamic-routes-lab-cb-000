require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse/:name' do
    @name = params[:name]
    "Your name reversed is #{@name.reverse}!"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    @number.times { |phrase| "#{@phrase}\n" }
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    params.values.each do { |v| "#{v}" }
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}"
  end

  get '/:operation/:number1/:number2' do

  end
end
