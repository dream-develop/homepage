class QuestionsController < ApplicationController
  def index
    redirect_to new_question_path
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to questions_confirmation_path
    else
      render :new
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
