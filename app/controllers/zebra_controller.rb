class ZebraController < ApplicationController
  
  def rock
    play("rock")
  end

  def paper
    play("paper")
  end

  def scissors
    play("scissors")
  end

  def rules
    render({:template => "game_templates/rules"})
  end

private

  # this will run for all three moves
  def play(player_choice)
    @player_move = player_choice
    @computer_move = ["rock", "paper", "scissors"].sample
    @outcome = determine_outcome(@player_move, @computer_move)

    #renders e.g., app/views/game_templates/play_rock.html.erb

    render({:template => "game_templates/play_#{player_choice}"})
  end

  # returns "win", "lose", or "tie"
  def determine_outcome(player, computer)
    wins = {
      "rock" => "scissors",
      "scissors" => "paper",
      "paper" => "rock"
    }


    if player == computer
      "tied"
    elsif wins.fetch(player) == computer
      "won"
    else
      "lost"
    end 
  end
end
