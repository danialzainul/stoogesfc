class PlayersController < ApplicationController

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      flash[:success] = "Player was added"
      redirect_to players_path
    else
      render 'new'
    end
  end

  private
    def player_params
      params.require(:player).permit(:name, :age, :position, :squad_no, :quote)
    end

end
