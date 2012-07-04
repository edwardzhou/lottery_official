class HomeController < ApplicationController

  def index

  end

  def guide

  end

  def history
    if request.xhr?
      @history = LotteryInst.history
      @total_rows = @history.count
      rows_per_page = params[:rows] || 108
      @page = params[:page].to_i
      @pages = (@total_rows / rows_per_page.to_f).ceil

      @page = @pages if @page > @pages

      @history = @history.paginate(:page => params[:page], :per_page => rows_per_page)
    end

  end

end
