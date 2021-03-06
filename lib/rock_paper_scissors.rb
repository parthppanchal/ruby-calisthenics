class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
  	error = false
    [player1, player2].each do |player|
    	error |= !["R", "P", "S"].include?(player[1])
    end
		raise NoSuchStrategyError, "Strategy must be one of R,P,S" if error
		win = {"R" => "S", "S" => "P", "P" => "R"}
		{true => player2, false => player1}[win[player2[1]] == player1[1]]
  end

  def self.tournament_winner(tournament)
    if !tournament[0][0].kind_of?(Array)
      self.winner(tournament[0], tournament[1])
    else
      self.winner(self.tournament_winner(tournament[0]), self.tournament_winner(tournament[1]))
    end
  end

end
