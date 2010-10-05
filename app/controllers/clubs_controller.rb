class ClubsController < ApplicationController
  before_filter :setup
  
  def index
    criteria = params[:club] && params[:club][:name]
    
    if criteria.blank?
      @clubs = []
    else
      @clubs = @s.clubs(criteria)
    end
  end

  def show
    @club = @s.club_show(params[:id])
  end

  def members
    @club = @s.club_show(params[:id])
    @members = @s.club_members(params[:id])
  end

  private
  def setup
    @s = StravaApi::Base.new
  end
end
