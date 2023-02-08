class QuestionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    Question.create(
      body: params[:questions][:body],
      user_id: params[:questions][:user_id]
    )

    # redirect_to "/"
    render text: "Super!"
  end

  def update
    @question = Question.find(params[:id])
    @question.update(
      body: params[:questions][:body],
      user_id: params[:questions][:user_id]
    )
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
  end
end
