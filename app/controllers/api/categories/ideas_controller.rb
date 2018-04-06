class Api::Categories::IdeasController < ApplicationController
  def index
    category = Category.find(params[:category_id])
    ideas    = category.ideas.order(votes: :desc)
    render json: ideas
  end

  def create
    category = Category.find(params[:category_id])
    idea     = category.ideas.create(idea_params)
    render json: idea
  end

  private

  def idea_params
    params.require(:idea).permit(:name, :content, :author)
  end
end
