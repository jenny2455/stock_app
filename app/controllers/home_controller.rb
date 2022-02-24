class HomeController < ApplicationController
  def index
    api_key = 'pk_e25ea171e4bc49b093ea9de578d08b64'
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
