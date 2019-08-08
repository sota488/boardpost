class ThemesController < ApplicationController
  def index
    @themes = Theme.all
  end

  def show
    @theme = Theme.find(params[:id])
  end

  def new
    @theme = Theme.new
  end

  def create
    @theme = Theme.new(theme_params)
    
    if @theme.save
      flash[:success] = 'スレッドが作成されました'
      redirect_to @theme
    else
      flash.now[:danger] = 'スレッドが作成されませんでした'
      render :new
    end
    
  end

  def edit
    @theme = Theme.find(params[:id])
  end

  def update
    @theme = Theme.find(params[:id])
    if @theme.update(theme_params)
      flash[:success] = 'スレッドが更新されました'
      redirect_to @theme
    else
      flash.now[:danger] = 'スレッドが更新されませんでした'
      render :edit
    end
  end

  def destroy
    @theme = Theme.find(params[:id])
    @theme.destroy
    
    flash[:success] = 'スレッドは削除されました'
    redirect_to themes_url
  end
  
  
  private
  
  def theme_params
    params.require(:theme).permit(:title)
  end
  
end