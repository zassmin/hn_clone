get '/' do
  @posts = Post.all
  erb :index
end

get '/post/:post_id' do
  @post = Post.find(params[:post_id])
  erb :show_post
end
