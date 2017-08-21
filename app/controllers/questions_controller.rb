class QuestionsController < ApplicationController
  def index
    @question=Question.all
  end

  def new
  end

  def create
    Question.create(name: params[:name], image: params[:image],text: params[:text])
  end
end
