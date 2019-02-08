class BonusDrink
  def self.total_count_for(amount)
    total_num = amount
    empty_num = 0
    while (amount > 0) do
      divmod = amount.divmod(3)
      total_num += divmod.first
      empty_num += divmod.last
      amount = divmod.first 
    end

    while (empty_num / 3 > 0) do
      divmod = empty_num.divmod(3)
      total_num += divmod.first
      empty_num = divmod.inject(:+) 
    end

    total_num
  end
end
