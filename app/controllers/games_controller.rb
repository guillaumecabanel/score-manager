class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def new
    @game = Game.new(icon: 'dice')
  end

  def create
    @game = Game.new(game_params)

    respond_to do |format|
      if @game.save
        format.html { redirect_to games_path }
        format.json { render :show, status: :created, location: games_path }
      else
        format.html { broadcast_errors @game, game_params }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def game_params
    params.require(:game).permit(:title, :icon)
  end
end
