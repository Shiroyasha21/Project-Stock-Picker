# BUY

# check stock,day


stock = [17,3,6,9,15,8,6,1,10]

# if (stock - bought_stock) > 0 >> profit_array

# [0,3,6,12,5,3,-2,7] <=> [0, -14, -11, -16, -8, -2, -9, -11, -10, -7]

#b.search
#drop(n)
#drop_while {}
#rindex

#buy date < sell date == true


# def stock_picker(stock_array)
#   buy = stock_array.min(3)
#   sell = stock_array.max(3)
#   current_profit = 0
#   buy_date = 0
#   sell_date = 0


#   buy.each do |buy_stock|
#     sell.each do |sell_stock|
#       if stock_array.rindex(buy_stock) < stock_array.rindex(sell_stock)        
#         profit = sell_stock - buy_stock
        
#         if current_profit < profit
#           current_profit = profit
#           buy_date = stock_array.rindex(buy_stock)
#           sell_date = stock_array.rindex(sell_stock)

#         end
#       end
#     end
#   end
#   return result = [buy_date, sell_date]
# end





def stock_picker(stock_array)
  current_profit = 0
  buy_date = 0
  sell_date = 0


  stock_array.each_with_index do |buy_stock, index|
    sell = stock_array.drop(index)

    sell.each do |sell_stock|
      if stock_array.rindex(buy_stock) < stock_array.rindex(sell_stock)        
        profit = sell_stock - buy_stock
        
        if current_profit < profit
          current_profit = profit
          buy_date = stock_array.rindex(buy_stock)
          sell_date = stock_array.rindex(sell_stock)

        end
      end
    end
  end
  return result = [buy_date, sell_date]
end


stock_picker(stock)

