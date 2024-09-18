post '/users' do
  @user = User.new(params[:user])
  if @user.save
    redirect '/'
  else
    "Erro ao criar usuário"
  end
end


get '/users/:id' do
  @user = User.find(params[:id])
  erb :show
end
