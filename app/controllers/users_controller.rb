class UsersController < Sinatra::Base

  get '/' do
    erb :'../views/users/home'
  end
end
