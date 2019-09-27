require "takeaway"

describe Takeaway do
  subject(:takeaway) { Takeaway.new(menu: menu, order: order) }

  let(:menu) { double(:menu, print: printed_menu) }
  let(:order) { instance_double("Order", total: 15.50) }

  before do
    allow(order).to receive(:add)
  end

  it "can order some number of several available dishes" do
    expect(order).to receive(:add).twice
    takeaway.place_order(dishes)
  end

  it "knows the order total" do
    total = takeaway.place_order(dishes)
    expect(total).to eq(15.50)
  end

end
