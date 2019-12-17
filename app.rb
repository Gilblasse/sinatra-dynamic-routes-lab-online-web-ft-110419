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
    @num1 = params[:number1]
    @num2 = params[:number2]
    @op = [:operation]
    binding.pry
    case params[:operation]
    when 'add'
      
    # params[:number1].to_i "#{params[:operation]}" params[:number2].to_i
  end
  get '/add/215/93'

    it 'subtracts the second number from the first' do
      get '/subtract/291/174'


    it 'multiplies two numbers together' do
      get '/multiply/12/11'

    it 'divides the first number by the second number' do
      get '/divide/612/4'
end