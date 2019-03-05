module ApplicationHelper
  def home_page?
    params[:controller] == 'pages' && params[:action] == 'home'
  end
end
