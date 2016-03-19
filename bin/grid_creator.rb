require_relative 'grid.rb'
require_relative 'cell.rb'


class GridCreator

	attr_accessor :input_pattern

  def self.create_grid(input_pattern)
    cells = File.foreach(input_pattern).map.with_index do |line, y_axis|
      line.split(" ").map.with_index do |data, x_axis|
        Cell.new(x_axis, y_axis, data == "1")
      end
    end.flatten

    Grid.new(cells, grid_height(input_pattern), grid_breadth(input_pattern))
  end

  def self.grid_breadth(input_pattern)
  	File.open(input_pattern, &:gets).split(/\s+/).size
  end

	def self.grid_height(input_pattern)
		File.foreach(input_pattern).inject(0) {|c, line| c+1}
	end

end
