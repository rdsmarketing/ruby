class PagesController < ApplicationController
  def home
  	@posts = FirstBlog.all
  end

  def about
  end

  def contact
  end
end
