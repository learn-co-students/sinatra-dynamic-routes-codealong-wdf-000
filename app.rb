require 'pry'


require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end


  get '/goodbye/:name' do
    name = params[:name]
    "Goodbye #{name}"
  end

  get '/multiply/:num1/:num2' do
    result1 = params[:num1].to_i
    result2 = params[:num2].to_i
    "#{result1 * result2}"

  end

#remember params is the hash. You must access the hash and they call on
#the key :num1 to compare its value. 

end
