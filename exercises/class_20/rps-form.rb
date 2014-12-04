require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
    erb :home
end

post '/throw' do
#get '/throw/:choice' do
    @title = "Rock, Paper, Scissors: Your Results"
    beats = {
    "Rock" => "Scissors",
    "Scissors" => "Paper",
    "Paper" => "Rock"
}
    
    computer = beats.keys[rand(beats.keys.size)]

    player = params[:choice]
    
    if !beats.keys.include?(player.capitalize)
        halt 403, "Please choose one of the following #{ beats.keys }."
    end
    
    if player.capitalize == computer
        @results = "You tied the computer. Try again."
        
    elsif computer == beats[player.capitalize]
        @results = "Congrats. #{ player } beats #{ computer}."
        
    else
        @results = "Sorry. #{ computer } beats #{ player }."
        
    end
    
    erb :throw
end

__END__

@@layout 
<!DOCTYPE html>
<html>
    <head><title><%= @title || "Rock, Paper, Scissors" %></title></head>
    <body>
        <!-- put logo here -->
        <h1>Rock, Paper, Scissors (FORM)</h1>
        <%= yield %>
    </body>
</html>
    
@@home 
        <p>Enter Rock, Paper or Scissors.</p>
        <form action="/throw" method="post">
            <input type="text" name="choice" />
        </form>


@@throw
        <h2>Your results:</h2>
        <%= @results %>


