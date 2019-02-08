class BonusDrink
  def self.total_count_for(amount)
    amount > 2 ? amount + ((amount - 1) / 2) : amount
  end
end
