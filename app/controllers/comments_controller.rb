class CommentsController < ApplicationController
  def new
    @question = Question.find(params[:question_id])

  end

  def create
    @comments=Comment.create(text: params[:text], name: current_user.name, user_id: current_user.id, question_id: params[:question_id])
  end

end
