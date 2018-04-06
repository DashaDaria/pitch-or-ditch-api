class Api::Categories::IdeasController < ApplicationController
  before_action :set_category, only: [:index, :create]

  def index
    ideas    = @category.ideas.order(votes: :desc)
    render json: ideas
  end

  def create
    idea     = @category.ideas.create(idea_params)
    render json: idea
  end

  private

  def idea_params
    params.require(:idea).permit(:name, :content, :author)
  end

  def set_category
    @category = Category.find(params[:category_id])
  end
end
