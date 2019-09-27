require "./lib/menu"

class Order

  attr_reader :dishes

  def initialize(menu)
    @menu = menu
    @dishes = {}
  end

  def add(item, quantity)
    fail StandardError, "#{item.capitalize} is not on the menu!" unless menu.has_dish?(item)
    dishes[item] = quantity
  end

  def total
    item_totals.inject(:+)
  end

  private

  attr_reader :menu

  def item_totals
    dishes.map do |item, quantity|
      menu.price(item) * quantity
    end
  end
end
