class MatchesController < ApplicationController
  before_action :set_championship, only: [:new, :create]

  def show
  end

  def new
    @games = Game.all
    @match = Match.new
  end

  def create
    @match = @championship.matches.new(match_params)

    respond_to do |format|
      if @match.save
        format.html {
          redirect_to championship_match_path(@championship, @match)
        }
        format.json {
          render :show, status: :created, location: championship_match_path(@championship, @match)
        }
      else
        format.html { broadcast_errors @match, match_params }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_championship
    @championship = Championship.find(params[:championship_id])
  end

  def match_params
    params.require(:match).permit(:game_id)
  end
end
