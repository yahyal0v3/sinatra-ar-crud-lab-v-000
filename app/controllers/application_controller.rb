require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do

  end

  get '/posts/new' do
    erb :new
    redirect to '/posts'
  end

  post '/posts' do
    Post.create(name: params[post_name], content: params[post_content])
  end
end
