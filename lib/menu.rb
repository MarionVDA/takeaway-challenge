class Menu
  attr_reader :dishes

  def initialize
    @dishes ={
          ratatouille: 14.95,
          cassoulet: 12.30,
          flammenkuche: 11.60
        }
  end

  def print
    @dishes.map do |title, price|
      "%s £%.2f" % [title.to_s.capitalize, price]
    end.join(", ")
  end

  def has_dish?(item)
    !@dishes[item].nil?
  end

  def price(item)
    @dishes[item]
  end
end
