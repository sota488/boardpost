module ThemesHelper
  def current_theme
    @current_theme = Theme.find_by(id: theme[:theme_id])
  end
end
