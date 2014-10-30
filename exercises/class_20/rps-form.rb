require 'sinatra'

get '/' do
    erb :home
end

get '/throw' do
#get '/throw/:choice' do
    
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

@@home 


<!DOCTYPE html>
<html>
    <head><title>Rock, Paper, Scissors (Form)</title></head>
    <body>
        <h1>Rock, Paper, Scissors</h1>
        <p>Enter Rock, Paper or Scissors.</p>
        <form action="/throw" method="get">
            <input type="text" name="choice" />
        </form>

    </body>
</html>

@@throw

<!DOCTYPE html>
<html>
    <head><title>Rock, Paper, Scissors (URL)</title></head>
    <body>
        <h1>Rock, Paper, Scissors</h1>
        <h2>Your results:</h2>
        <%= @results %>
    </body>
</html>



