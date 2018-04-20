class UsersController < ApplicationController

  get '/' do
    erb :'/users/home'
  end

  get '/new' do

  end
end
