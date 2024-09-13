get '/' do
  redirect '/tarefas'
end

get '/tarefas' do
  erb :tarefas
end

get '/tarefas/nova' do
  erb :nova
end
