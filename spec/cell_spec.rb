require 'cell'

describe Cell do

  let(:cell) {Cell.new}
  let(:ship) {double :ship}

  context "upon initialize it" do

    it "should have water" do
      expect(cell).to have_water
    end

    it "should not have ships" do
      expect(cell).not_to have_ship
    end

  end

  context "during the game" do

    it "should be able to be hit" do
      expect(cell).not_to be_hit
      cell.hit!
      expect(cell).to be_hit
    end

    it "should be able to contain ships" do
      cell.place!(ship)
      expect(cell).to have_ship
    end

    it "to_s should return 'X' when hit" do
      cell.hit!
      expect(cell.content).to eq('x')
    end

    it "should not be able to be shot twice" do
      cell.hit!
      cell.hit!
      expect(lambda{cell.hit_count}).to raise_error(RuntimeError, 'Cell is hit more than once')
    end

  end


end
