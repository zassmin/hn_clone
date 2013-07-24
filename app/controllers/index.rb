get '/' do
  @posts = Post.all
  erb :index
end

get '/post/:post_id' do
  @post = Post.find(params[:post_id])
  erb :show_post
end

get '/user/new' do
  erb :new_user
end

post '/user/new' do
  User.create(params[:user])
end

get '/user/:user_id' do

end
