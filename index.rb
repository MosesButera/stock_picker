
def stock_picker(prices = nil)

  return "please enter a parameter of an array of daily prices" if prices.nil?
  return "Please enter valid array e.g [1,3,4,9]" unless prices.is_a?(Array) 

    #Initialize all variables
    max_profit = -Float::INFINITY
    min_price = prices[0]
    min_day  = 0
    buy_price = 0
    sell_price = 1

    (1...prices.length).map do |day|

      current_price = prices[day]

      #Track the min_price or best buy_price candidate
      
      if current_price < min_price
        min_price = current_price
        min_day = day
      end
      
      #Calculate profit for each day
      profit = current_price - min_price

      #keep track of best profit and corresponding best sell_price candidate
      if profit > max_profit
        max_profit = profit
        buy_price = min_day
        sell_price = day
      end

    end 
    
    if max_profit <= 0
      return "No profitable trades possible"    
    end
    [buy_price, sell_price]

end































