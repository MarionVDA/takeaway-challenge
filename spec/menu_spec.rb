require "menu"

describe Menu do

  subject(:menu) { Menu.new }

  it "has a list of dishes with prices" do
    expect(menu.dishes).to eq({ratatouille: 14.95, cassoulet: 12.30, flammenkuche: 11.60})
  end

  it "prints a list of dishes with prices" do
    expect(menu.print).to eq("Ratatouille £14.95, Cassoulet £12.30, Flammenkuche £11.60")
  end

  it "tells if a item is on the menu" do
    expect(menu.has_dish?(:ratatouille)).to be true
  end

  it "tells if a item is not on the menu" do
    expect(menu.has_dish?(:pie)).to be false
  end

  it "calculates a price" do
    expect(menu.price(:flammenkuche)).to eq(11.60)
  end
end
