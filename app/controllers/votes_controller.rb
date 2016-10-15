class VotesController < ApplicationController
  def new
    @vote = Vote.new
  end

  def create
    @vote = Vote.new(product_params)
    return redirect_to votes_path if @vote.save
    render :new
  end
end
