class HomeController < ApplicationController

  after_filter  :pageview

  def index
  end
end
