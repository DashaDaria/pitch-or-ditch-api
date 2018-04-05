class Api::IdeasController < ApplicationController

  def index
    render json: Idea.all
  end

  def create
    idea = Idea.new(idea_params)
    if idea.save
      render json: idea
    else
      render json: {message: idea.errors}, status: 400
    end
  end

  private
  def idea_params
    params.require(:idea).permit(:category_id, :name, :content, :author)
  end

end
