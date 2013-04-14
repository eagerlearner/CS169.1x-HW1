class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  # YOUR CODE HERE

	gRules = { 'R' => 'S', 'P' => 'R', 'S' => 'P' }
  
	raise NoSuchStrategyError unless gRules[m2[1].upcase] != nil 
	raise NoSuchStrategyError unless gRules[m1[1].upcase] != nil 

	return gRules[m1[1]] == m2[1] ? m1 : ( m1[1] == m2[1] ? m1 : m2 )
end

def rps_game_winner(game)
  # YOUR CODE HERE

	raise WrongNumberOfPlayersError unless game.length == 2
	
	return rps_result game[0], game[1]

end

def rps_tournament_winner(tournament)
  # flatten tree
  return rps_tournament_winner_rec tournament.flatten(2)
end

def rps_tournament_winner_rec(players)
  # YOUR CODE HERE

  # place to hold the winners for each round
  winners = []

  # final condition to stop the recursion
  if players.size == 1
    return players[0]
  else
    # take pairs from your list to play each other
    players.each_slice(2) do |p1, p2|      
      winners << rps_result(p1, p2)
    end

    # play the winners against each other
    rps_tournament_winner_rec winners  
  end


end

tournament = [
    [
        [ ["Armando", "P"], ["Dave", "S"] ],
        [ ["Richard", "R"],  ["Michael", "S"] ],
    ],
    [
        [ ["Allen", "S"], ["Omer", "P"] ],
        [ ["David E.", "R"], ["Richard X.", "P"] ]
    ]
]
tournament1 = [
    [
        [ ["Armando", "P"], ["Dave", "S"] ],
    ],
    [
        [ ["Allen", "S"], ["Omer", "P"] ],
    ]
]
tournament2 = [
    [
        [ ["Armando", "P"], ["Dave", "S"] ],
    ]
]

puts rps_tournament_winner( tournament ).to_s
puts rps_tournament_winner( tournament1 ).to_s
puts rps_tournament_winner( tournament2 ).to_s
