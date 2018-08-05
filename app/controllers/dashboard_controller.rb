class DashboardController < ApplicationController

  before_filter :authorize

  def index
  end

  def totalviews
    Analytic.count
  end

  def clean

    # Optimize this
    
    recr = 0

    bots = Analytic.where("user_agent LIKE '%bot%'")
    recr += bots.count
    bots.delete_all

    craw = Analytic.where("user_agent LIKE '%crawler%'")
    recr += craw.count
    craw.delete_all

    redirect_to dash_url, notice: "Deleted #{recr} records"
  end

end
