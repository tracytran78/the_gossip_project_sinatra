class ApplicationController < Sinatra::Base
  get '/' do
    erb :index, locals: {gossips: Gossip.all}
  end
  
  get '/gossips/new/' do
    erb :new_gossip
  end
  
  post '/gossips/new/' do
    Gossip.new(params['gossip_author'],params['gossip_content']).save
    redirect '/'
  end

  get '/gossips/:id/' do
    erb :show, locals: {id: params['id'].to_i, gossip: Gossip.find(params['id'].to_i)}
  end

  post '/gossips/:id/' do
    Gossip.comment(params['id'].to_i, params['comment'])
    redirect "gossips/#{params['id']}/"
  end

  get '/gossips/*/edit/' do
    erb :edit, locals: {id: params['splat'][0].to_i}
  end

  post '/gossips/*/edit/' do
    Gossip.edit(params['splat'][0].to_i, params['gossip_author'],params['gossip_content'])
    redirect '/'
  end
end
