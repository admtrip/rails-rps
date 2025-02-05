class ZebraController < ApplicationController
  def rules
    render({ :template => "game_templates/homepage" })
  end

  def play_rock
    @player_move = "rock"
    play_game
  end

  def play_paper
    @player_move = "paper"
    play_game
  end

  def play_scissors
    @player_move = "scissors"
    play_game
  end

  private

  def play_game
    @computer_move = ["rock", "paper", "scissors"].sample
    @outcome = determine_winner(@player_move, @computer_move)

    render({ :template => "game_templates/play" })
  end

  def determine_winner(player, computer)
    if player == computer
      "We played #{player.capitalize}!<br>They played #{computer.capitalize}!<br>It's a tie!"
    elsif (player == "rock" && computer == "scissors") ||
          (player == "paper" && computer == "rock") ||
          (player == "scissors" && computer == "paper")
      "We played #{player.capitalize}!<br>They played #{computer.capitalize}!<br>We won!"
    else
      "We played #{player.capitalize}!<br>They played #{computer.capitalize}!<br>We lost!"
    end
  end
end
