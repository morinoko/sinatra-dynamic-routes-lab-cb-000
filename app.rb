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
    @words = params.values
    "#{@words.join(" ")}"
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation].downcase
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case @operation
    when "add"
      "#{@num1 + @num2}"
    else
      "Not a valid operation"
    end
  end
end
