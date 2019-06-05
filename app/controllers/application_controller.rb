
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    # erb :index
  end

  # Allow user to create a new Post
  get '/posts/new' do
    erb :new
  end
  
   # this is where we make new posts that save to our database!
  post '/posts' do
    Post.create(params)
    redirect '/posts'
  end
end
