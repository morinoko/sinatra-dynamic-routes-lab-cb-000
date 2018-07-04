require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse/:name' do
    @name = params[:name]
    "Your name reversed is #{@name.reverse}!"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase].to_s

    @number.times { |phrase| "#{@phrase}\n" }
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = params.values
    "#{@words.join(" ")}"
  end

  get '/:operation/:number1/:number2' do

  end
end
