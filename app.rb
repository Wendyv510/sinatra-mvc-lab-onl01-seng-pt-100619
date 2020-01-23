require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input 
  end 
  
  post '/piglatinize' do 
    @piglatinized_phrase = Piglatinizer.new(params[:user_phrase])
    
    erb :piglatinized_phrase
  end 
    
    
end