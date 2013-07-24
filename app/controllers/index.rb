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

  redirect '/'
end

get '/user/login' do
  erb :login
end

post '/user/login' do
  @user = User.find_by_username(params[:user][:username])

  if @user
    if @user.password == params[:user][:password]
      login_user(@user)
      redirect "/"
    else
      redirect '/user/login'
    end
  else
    redirect '/user/login'
  end
end

get '/logout' do
  logout
  redirect '/'
end

get '/user/:user_id' do
  @user = User.find(params[:user_id])
  erb :profile
end
