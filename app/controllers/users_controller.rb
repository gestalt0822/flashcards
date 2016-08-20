class UsersController < ApplicationController

  def show
    @nickname = current_user.nickname
    @words = Word.where(user_id: current_user.id)
    @words_count = @words.count
    @user = current_user
  end

end
