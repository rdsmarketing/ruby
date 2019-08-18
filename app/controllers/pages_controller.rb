class PagesController < ApplicationController
  def home
  	@posts = FirstBlog.all
  	@skills = Skill.all
  end

  def about
  end

  def contact
  end
end
