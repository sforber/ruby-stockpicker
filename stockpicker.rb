def stock_picker(prices)

    max_profit = 0
    buy_day = 0
    sell_day = 0

    prices.each_with_index  do |buy_price, index|
        prices.each_with_index  do |sell_price ,sell_price_index| 
            if sell_price_index > index 
                if sell_price - buy_price > max_profit
                    buy_day = index
                    sell_day = sell_price_index
                    max_profit = sell_price - buy_price
                end
            end
        end
    end
    puts ("Buy on day: #{buy_day}\nSell on day: #{sell_day}\nProfit = #{max_profit}")
end

prices = [17,3,6,9,15,8,6,1,10]
stock_picker(prices)