require './bin/cell.rb'

describe Cell do

  before(:each) do
    @cell = Cell.new(1, 1, true)
  end

  describe '#alive?' do

    it "should return true if status of the cell is true" do
      @cell.alive?.should == true
    end

  end

  describe '#dead?' do

    it "should return true if status of the cell is true" do
      @cell.dead?.should == false
    end

  end

  describe '#update_state(value)' do

    it "should set the cell state with new value" do
      @cell.update_state(true).should == true
    end

  end

end
