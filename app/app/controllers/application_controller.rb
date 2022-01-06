class ApplicationController < ActionController::Base
  # ログイン後のルート遷移
  def after_sign_in_path_for(resource)
    posts_path
  end
end
