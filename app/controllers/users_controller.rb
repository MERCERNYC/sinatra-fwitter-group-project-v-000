class UsersController < ApplicationController

  get '/' do
    erb :'/users/home'
  end
end
