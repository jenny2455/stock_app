class HomeController < ApplicationController
  def index
    api_key = 'pk_7f77bb722f0a42b6a2088529f6d57d96'
    @api = StockQuote::Stock.new(api_key: api_key)
    
    if params[:ticker] == ""
      @nothing = "Add a ticker symbol to search."
    elsif params[:ticker]
      @stock = StockQuote::Stock.quote(params[:ticker])

      if !@stock
        @error = "Stock Ticker does not exist. Please try again."
      end
      
    end

  end

  def about
  end

end
