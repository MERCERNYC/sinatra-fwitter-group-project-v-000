class UsersController < ApplicationController

  get '/' do
    erb :'../views/users/home'
  end
end
