class PostsController < ApplicationController
  before_action :find_post_id, only: [:show, :edit, :update, :destroy]
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to "/", notice: "投稿を完了しました"
    else
      flash[:notice] = "入力内容が間違っています"
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to "/", notice: "投稿を編集しました"
    else
      flash[:notice] = "入力が違います"
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to "/", notice: "投稿を削除しました"
  end

  private
  def post_params
    params.require(:post).permit(:name, :description)
  end

  def find_post_id
    @post = Post.find_by(id: params[:id])
  end
end
