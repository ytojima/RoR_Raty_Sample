class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    # raty.js用のフォーム
    @review = Review.new
    # raty.jsの平均値
    @review_avg = Review.where(post_id: params[:id]).average(:review)
    # すでに評価済みかの確認フラグ
    @review_flg = Review.find_by(user_id: current_user.id, post_id: params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    Post.find(params[:id]).destroy()
    redirect_to root_path
  end

  private

  def post_params
    # mergeメソッドでユーザーIDをStrongParameterに追加
    params.require(:post).permit(:title, :content)
          .merge(user_id: current_user.id)
  end
end
