class Api::IdeasController < ApplicationController
  before_action :set_idea, only: [:show, :update, :destroy]

  def index
    render json: Idea.all.order(votes: :desc)
  end

  def show
    render json: @idea
  end

  def update
    if @idea.update(idea_params)
      render json: @idea
    else
      render json: { message: @idea.errors }, status: 400
    end
  end

  def destroy
    if @idea.destroy
      render json: {message: "Successfully deleted"}, status: 204
    else
      render json: {message: "Problems deleting"}, status: 400
    end
  end

  private
  def idea_params
    params.require(:idea).permit(:votes)
  end

  def set_idea
    @idea = Idea.find(params[:id])
  end
end
