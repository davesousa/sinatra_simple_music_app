# Homepage (Root path)
get '/' do
  erb :index
end

get '/index' do
  @tracks = Track.all
  erb :'songs/index'
end

get '/new' do
  erb :'songs/new'
end

post '/new_track' do
  @tracks = Track.new(
    song_title: params[:song_title],
    url: params[:url],
    author:  params[:author]
  )
  if @tracks.save
    redirect '/index'
  else
    erb :'songs/new'
  end
end
