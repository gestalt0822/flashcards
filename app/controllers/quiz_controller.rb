class QuizController < ApplicationController

  def quiz
    @question_number = 0
    @correct_number = 0
    @incorrect_number = 0
  end

  def question
    @total_number = params[:total_number].to_i
    @question_number = params[:question_number].to_i
    @correct_number = params[:correct_number].to_i
    @incorrect_number  = params[:incorrect_number].to_i
    @words_count = Word.count
    @ids = Word.select(:id).map(&:id).sample(@words_count)
    @id = @ids[@question_number]
    @word = Word.find(@id)
    @words = [@word.meaning,@word.wrong1,@word.wrong2]
    @words_quiz = @words.sample(3)
    @question_number += 1
  end

  def answer
    @total_number = params[:total_number].to_i
    @question_number = params[:question_number].to_i
    @correct_number = params[:correct_number].to_i
    @incorrect_number  = params[:incorrect_number].to_i
    @word = params[:word]
    @answer = params[:answer]
    @word_meaning = params[:word_meaning]

    if @answer == @word_meaning
      @result = "正解"
      @correct_number += 1
    else
      @result = "不正解"
      @incorrect_number += 1
    end


  end

  def result
    @total_number = params[:total_number].to_i
    @question_number = params[:question_number].to_i
    @correct_number = params[:correct_number].to_i
    @incorrect_number  = params[:incorrect_number].to_i
    @percent = @correct_number.to_f/@total_number*100
    
    if user_signed_in?
    @user = current_user
    @user.correct = @user.correct.to_i + @correct_number
    @user.incorrect = @user.incorrect.to_i + @incorrect_number
    @user.try = @user.try.to_i + @total_number
    @user.accuracy_rate = @user.correct.to_i.to_f/@user.try.to_i * 100.floor
    @user.save
    end
  end
  
end
