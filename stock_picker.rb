# frozen_string_literal: true

def stock_picker(prices)
  max_profit = 0
  buy_index = 0
  sell_index = 1
  prices.each_index do |i|
    prices[i + 1..].each_index do |j|
      profit = prices[prices.length - j - 1] - prices[i]
      next unless profit > max_profit

      max_profit = profit
      buy_index = i
      sell_index = j
    end
  end
  [buy_index, sell_index]
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
