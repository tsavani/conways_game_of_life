require './bin/grid.rb'
require './bin/cell.rb'
require './bin/grid_creator.rb'

describe GridCreator do

  before(:each) do
    @grid = GridCreator.create_grid('./fixtures/seed.txt')
  end

  describe '#create_grid' do
	it "creates a grid object from the input pattern" do
      @grid.cells.count.should == 100
	end
  end

  describe '#grid_height' do
	it "returns the height of the grid" do
      @grid.height.should == 10
    end
  end

  describe '#grid_height' do
	it "returns the height of the grid" do
      @grid.breadth.should == 10
    end
  end

end
