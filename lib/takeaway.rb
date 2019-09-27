require "./lib/order"

class Takeaway

  attr_reader :menu, :order

  def initialize(menu:, order: nil)
    @menu = menu
    @order = order || Order.new(menu)
   end

  def place_order(dishes)
    add_dishes(dishes)
    order.total
  end

  def add_dishes(dishes)
    dishes.each do |item, quantity|
      order.add(item, quantity)
    end
  end
end
