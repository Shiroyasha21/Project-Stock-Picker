def stock_picker(stock_array)
  current_profit = 0
  buy_date = 0
  sell_date = 0

  stock_array.each_with_index do |buy_stock, index|
    sell = stock_array.drop(index)
    buy_index = index

    sell.each_with_index do |sell_stock, index|
      profit = sell_stock - buy_stock
      
      if current_profit < profit && profit > 0
        current_profit = profit
        buy_date = buy_index
        sell_date = index + buy_index
      end
    end
  end
  result = [buy_date, sell_date]
end

stock_picker([17,3,6,9,15,8,6,1,10])

