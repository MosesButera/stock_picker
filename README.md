
# 📈 Stock Picker (Ruby)

## 📖 Project Summary
The **Stock Picker** function helps find the best days to buy and sell a stock to maximize profit.  
It takes an array of daily prices as input and returns a pair of indices `[buy_day, sell_day]`.  

If no profit is possible, it returns a message: `"No profitable trades possible"`.  
If the input is invalid, it returns an error string with guidance.  

---

## 🚀 Example Usage
```ruby
stock_picker([17,3,6,9,15,8,6,1,10])
# => [1, 4]  # Buy on day 1 (price 3), sell on day 4 (price 15)

stock_picker([6,5,4,3,2,1])
# => "No profitable trades possible"

stock_picker()
# => "please enter a parameter of an array of daily prices"



🔧 Pseudocode

function stock_picker(prices):
    if prices is nil:
        return error
    if prices is not array:
        return error
    
    initialize max_profit = -∞
    initialize min_price = first price
    initialize min_day = 0
    initialize buy_day, sell_day
    
    for each day starting from 1:
        current_price = prices[day]

        if current_price < min_price:
            min_price = current_price
            min_day = day

        profit = current_price - min_price

        if profit > max_profit:
            max_profit = profit
            buy_day = min_day
            sell_day = day

    if max_profit <= 0:
        return "No profitable trades possible"

    return [buy_day, sell_day]


🔍 Problem-Solving Pattern

  1. Loop only once through the array.

  2. Keep track of:

    - Minimum price seen so far (candidate for buying).

    - Best profit so far (candidate for selling).

  3. Update when better opportunities appear.

  ✅ This pattern is called sliding minimum tracking (or "greedy min-so-far").


  🛠️ How to Run

    1. Install Ruby.

    2. Save code into stock_picker.rb.

    3.  Run in terminal:

          ruby stock_picker.rb
