#implements a picker which gives the optimum time to buy and sell based on a list.

def stock_picker(stocks)
  bestArr = []
  min = stocks[0]-stocks[1]
  stocks.each_with_index do |day,index1|
    stocks[stocks.index(day)..].each do |sellday|
      if day - sellday < min
        min = day - sellday
        bestArr = [index1,stocks.index(sellday)]
      end
    end
  end
  bestArr
end
