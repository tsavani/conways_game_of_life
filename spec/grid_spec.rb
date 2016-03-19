require './bin/grid.rb'
require './bin/cell.rb'
require './bin/grid_creator.rb'

describe Grid do

  before(:each) do
    @grid = GridCreator.create_grid('./fixtures/seed.txt')
  end

  describe 'find live neighbouring cells' do

    it "should return true if status of the cell is true" do
      @grid.search_neighbour_cells(@grid.cells.first).should == []
    end

  end

end
