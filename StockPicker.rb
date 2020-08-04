# By josh arber

=begin
    Stock Picker
    --takes in an array of "stock prices", one for 
    each hypothetical day. returns a pair of days 
    showing the best day to buy and the best day to 
    sell. days start at 0

    # Assignment from The Odin Project
=end

stocks_one = [17,3,6,9,15,8,6,1,10]
stocks_two = [8,22,100,73,50,35,42,71,92]
stocks_three = [23,85,82,2,86,49,14,84,7]

def stock_picker(prices=[])

    # init
    cur_buy = 1 / 0.000000000001
    cur_profit = 0
    buy_index = 0
    sell_index = 0

    # walk the prices array
    prices.each_with_index do |buy_price, i|

        # save the next buy
        next_buy = buy_price

        # check if next buy is less
        if (cur_buy > next_buy)
            cur_buy = next_buy

            # check profit of the following days
            prices.each_with_index do |sell_price, j|
            
                # only check the days after current day
                if (j > i)                    
                    profit = sell_price - cur_buy

                    if (cur_profit < profit)
                        cur_profit = profit
                        buy_index = i
                        sell_index = j
                    end
                end
            end
        end
    end

    return [buy_index, sell_index]
end

p stock_picker(stocks_one)
p stock_picker(stocks_two)
p stock_picker(stocks_three)