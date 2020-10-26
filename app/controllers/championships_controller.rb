class ChampionshipsController < ApplicationController
  def index
    @championships = Championship.all
  end

  def show
    @championship = Championship.find(params[:id])
  end

  def new
    @championship = Championship.new
  end

  def create
    @championship = Championship.new(championship_params)

    respond_to do |format|
      if @championship.save
        format.html { redirect_to championships_path }
        format.json { render :show, status: :created, location: championships_path }
      else
        format.html { broadcast_errors @championship, championship_params }
        format.json { render json: @championship.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def championship_params
    params.require(:championship).permit(:title, :start_at, :end_at)
  end
end
