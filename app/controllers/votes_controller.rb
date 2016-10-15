class VotesController < ApplicationController
  def new
    @vote = Vote.new
  end

  def create
    @vote = Vote.new(vote_params)
    #return redirect_to votes_path if @vote.save
    return redirect_to batmanvssuperman_path if @vote.save
    render :new
  end

  def vote_params
    params.require(:vote).permit(:hero, :email)
  end
end
