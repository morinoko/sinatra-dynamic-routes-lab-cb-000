require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse/:name' do
    @name = params[:name]
    "Your name reversed is #{@name.reverse}!"
  end

  get '/say/:number/:phrase' do
    
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    
  end

  get '/:operation/:number1/:number2' do
    
  end
end