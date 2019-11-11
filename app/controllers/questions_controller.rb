class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to questions_confirmation_path
    else
      redirect_to root_path
    end
  end

  def agreement
  end

  def confirmation
  end

  private
  def question_params
    params.require(:question).permit(:family_name, :first_name, :family_kana, :first_kana, :phone, :email, :content, :agreement)

  end
end
