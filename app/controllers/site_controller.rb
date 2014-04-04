class SiteController < ApplicationController
  def index
  	@title="RShare"
  end

  def about
  	@title="RShare About"
  end

  def help
  	@title="RShare Help"
  end
end
