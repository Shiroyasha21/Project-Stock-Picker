stock = [17,4,6,2,12,11,20,1,10]

def stock_picker(stock_array)
  current_profit = 0
  buy_date = 0
  sell_date = 0

  stock_array.each_with_index do |buy_stock, index|
    sell = stock_array.drop(index)

    sell.each do |sell_stock|
      profit = sell_stock - buy_stock
      
      if current_profit < profit && profit > 0
        current_profit = profit
        buy_date = stock_array.rindex(buy_stock)
        sell_date = stock_array.rindex(sell_stock)
      end
    end
  end
  return result = [buy_date, sell_date]
end

stock_picker(stock)

