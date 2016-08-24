class WordsController < ApplicationController

  def index
  end

  def new
    @word = Word.new
  end

  def list
    @words = Word.all
    @word_count = Word.count
  end

  def ranking
   @ranking_a = User.order('accuracy_rate DESC').limit(5)
   @ranking_b = User.order('try DESC').limit(5)
  end

  def destroy
    word = Word.find(params[:id])
      word.destroy
  end

  def edit
    @word = Word.find(params[:id])
  end

  def update
    @word = Word.find(params[:id])
    @word.update(word_params)
  end

  def create
    Word.create(word: word_params[:word], meaning: word_params[:meaning], wrong1: word_params[:wrong1], wrong2: word_params[:wrong2], user_id: current_user.id)
  end

  private
  def word_params
    params.permit(:word, :meaning, :wrong1, :wrong2, )
  end

end
