require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  
  post '/tattoo' do
   tattoo_type=params[:tattoo]
   @result=choose_tat(tattoo_type)
   erb :results 
    
  end
  
  
end