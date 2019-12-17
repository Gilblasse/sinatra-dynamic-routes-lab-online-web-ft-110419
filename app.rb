require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    @name = params[:name]
    "#{@name.reverse!}"
  end
  
  get '/square/:number' do 
    @num = params[:number].to_i
    "#{@num * @num}"
  end
  
  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    arr = []
    @num.times {arr << @phrase}
    arr.join(' ')
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params.map {|k,v| v }.join(' ')}."
  end
  
  get '/:operation/:number1/:number2' do 
    binding.pry
    # params[:number1].to_i "#{params[:operation]}" params[:number2].to_i
  end

end