require "order"
require "menu"

describe Order do
  subject(:order) { Order.new(menu) }

  let(:menu) { instance_double("Menu") }

  let (:create_order) do
      order.add(:ratatouille, 2)
      order.add(:cassoulet, 1)
    end

  it "selects several dishes from the menu" do
    create_order
    expect(order.dishes).to eq(dishes)
  end

  it "doesn't allow items to be added that are not on the menu" do
    allow(menu).to receive(:has_dish?).with(:pie).and_return(false)
    expect { order.add(:pie, 2) }.to raise_error StandardError, "Pie is not on the menu!"
  end


end
