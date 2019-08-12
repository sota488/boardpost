class PostsController < ApplicationController
  
  def create
    theme = Theme.find(params[:theme_id])
    @post = Post.new(post_params)
    @post.theme_id = theme.id
    if @post.save
      
      flash[:success] = 'コメントが投稿されました'
      redirect_back(fallback_location: root_path)
    else
      flash.now[:danger] = 'コメントが投稿されませんでした'
      redirect_back(fallback_location: root_path)
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:success] = 'コメントが更新されました'
      redirect_to @post
    else
      flash.now[:danger] = 'コメントが更新されませんでした'
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    
    flash[:success] = 'コメントは削除されました'
    redirect_to posts_url
  end
  
  
  private
  
  def post_params
    params.require(:post).permit( :name, :body)
  end
  
end
