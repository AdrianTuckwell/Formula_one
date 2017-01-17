class TeamsController < ApplicationController

  def index
    teams = Team.all
    render :json => teams
  end

  def show
    team = Team.find( params[:id])
    render :json => team.as_json({include:{driver: {only: :name}}})
  end

end