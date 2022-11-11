def stock(days)
  max = 0
  max_temp = 0
  stock_buy = 0 
  stock_sell = 0
  days.each_with_index do |day_buy, idx_buy|
    days.each_with_index do |day_sell, idx_sell|
      max_temp = days[idx_sell] - days[idx_buy] if idx_sell > idx_buy
      if max_temp > max
       max = max_temp
       stock_buy = idx_buy
       stock_sell = idx_sell
      end
    end
  end
  [stock_buy, stock_sell]
end

p stock ([17,3,6,9,15,8,6,1,10])

p stock ([100,3,6,9,15,8,6,1,16,1,0])