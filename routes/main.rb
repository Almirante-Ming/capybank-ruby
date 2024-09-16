get '/' do
  redirect '/teste'
end

get '/teste' do
  @users = User.all
  erb :teste
end

get '/main' do
  erb :main
end

get '/users/new' do
  redirect 'user'
end
