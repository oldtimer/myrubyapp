class PagesController < ApplicationController
  
  def home
  	@title="Ruby on Rails Tutorial Sample App | Home"
  	if signed_in?
      @micropost = Micropost.new
      @feed_items = current_user.feed.paginate(:page => params[:page])
    end
  end

  def contact
  	@title="Ruby on Rails Tutorial Sample App | Contact"
  end
  
  def help
  	@title="Ruby on Rails Tutorial Sample App | Help"
  end
  
  def about
  	@title="Ruby on Rails Tutorial Sample App | About"
  end

end
