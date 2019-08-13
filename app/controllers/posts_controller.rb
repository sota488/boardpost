class PostsController < ApplicationController
   def show
    @post = Post.find(params[:id])
   end
  
  
  
  def create
    @theme = Theme.find(params[:theme_id])
    @post = Post.new(post_params)
    @post.theme_id = @theme.id
    if @post.save
      
      flash[:success] = 'コメントが投稿されました'
      redirect_back(fallback_location: root_path)
    else
      flash.now[:danger] = 'コメントが投稿されませんでした'
      redirect_back(fallback_location: root_path)
    end
  end


 
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    
    flash[:success] = 'コメントは削除されました'
    redirect_to themes_url
  end
  
  
  private
  
  def post_params
    params.require(:post).permit( :name, :body)
  end
  
end
