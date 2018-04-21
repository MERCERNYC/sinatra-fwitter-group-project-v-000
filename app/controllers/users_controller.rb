class UsersController < ApplicationController

  get '/' do
    erb :'/index'
  end

  get '/signup' do
    if logged_in?
      redirect to '/tweets'
    else
      erb :'/users/signup'
    end
  end

  post '/signup' do
    if params[:username] == ""|| params[:email] == ""|| params[:password] == ""
      redirect '/signup'
    else
      @user = User.create(params)
      @user.save
      session[:user_id] = @user.id
      redirect '/tweets'
    end
  end

  get '/login' do
    if logged_in?
      redirect '/tweets'
    else
      erb :'/users/login'
    end
  end

  post '/login' do
      @user = User.find_by(username: params["username"], password: params["password"])
      if @user != nil
        session[:user_id] = @user.id
        redirect '/tweets'
      else
        redirect '/login'
      end
    end
end
