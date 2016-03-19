require './bin/grid.rb'
require './bin/cell.rb'
require './bin/grid_creator.rb'
require './bin/Mark.rb'

describe GridCreator do

  before(:each) do
    @grid = GridCreator.create_grid('./fixtures/seed.txt')
    @neighbouring_live_cells = @grid.search_neighbour_cells(@grid.cells.first).count
  end


  describe 'if rebirth possible' do
	 it "returns true if cell has 3 live neighbours" do
      Mark.if_rebirth_possible?(@neighbouring_live_cells).should == false
    end
  end

  describe 'if cell alone' do
    it "returns true if cell can has less than 2 neighbours" do
      Mark.if_cell_lonely?(@neighbouring_live_cells).should == true
    end
  end

  describe 'if cell overcrowded' do
    it "returns true if cell can has more than 3 neighbours" do
      Mark.if_cell_overcrowded?(@neighbouring_live_cells).should == false
    end
  end

end
