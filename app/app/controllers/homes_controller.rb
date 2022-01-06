class HomesController < ApplicationController
  def index
    # ログイン済みの場合は、トップページから
    # ポスト一覧にリダイレクト
    redirect_to posts_path if user_signed_in?
  end
end
