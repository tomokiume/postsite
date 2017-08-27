class QuestionsController < ApplicationController
  def index
    @questions=Question.all
  end

  def new
  end

  def create
    Question.create(name: current_user.name,image: params[:image], text: params[:text],user_id: current_user.id)
  end

  def destroy
    question=Question.find(params[:id])
    if question.user_id==current_user.id
      question.destroy

    end
  end

  def show
    @question=Question.find(params[:id])
    @comments= Comment.where(question_id: params[:id])
  end

end
