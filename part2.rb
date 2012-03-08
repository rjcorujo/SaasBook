#Error subclasses
class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end



def rps_game_winner(game)
  validgames = ["R","P","S"]
  raise WrongNumberOfPlayersError unless game.length == 2
  raise NoSuchStrategyError unless validgames.index game[0][1] and validgames.index game[1][1]
  opt1,opt2 = game[0][1],game[1][1]
   
  if opt1 == opt2 #first one wins
    winner = 0
  else
    case opt1
    when "R"
      winner = opt2 == "S" ? 0 : 1
    when "P"
      winner = opt2 == "R" ? 0 : 1
    when "S"
      winner = opt2 == "P" ? 0 : 1
    end
  end
  return game[winner]
end

def rps_tournament_winner(tournament)
  raise WrongNumberOfPlayersError unless tournament.length == 2
  part1 = tournament[0]
  part2 = tournament[1]
  if part1[0].kind_of?(Array)
    part1 = rps_tournament_winner([part1[0],part1[1]])
    part2 = rps_tournament_winner([part2[0],part2[1]])
  end
  winner = rps_game_winner([part1,part2])
  return winner
end

#puts rps_game_winner([["pepe","P"]])
#puts rps_game_winner([["pepe","P"],["ss","p"]])
#puts rps_game_winner([["Armando","P"],["Dave","S"]])

tournament = [
  
  [ 
     [ ["Armando","P"],["Dave","S"] ],
     [ ["Richard", "R"], ["Michael","S"]]
  ],
  [ 
      [ ["Allen","S"],["Omer","P"] ],
      [ ["David E.","R"],["Richard X.","P"] ]
  ]
]

#puts rps_tournament_winner(tournament)


