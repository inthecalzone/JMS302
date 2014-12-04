require "sinatra"
require "sinatra/reloader" if development?

get "/" do
    @title = "Jane Hammond's portfolio"
    erb :home
end