require_relative 'cell.rb'
require_relative 'grid.rb'
require_relative 'grid_creator.rb'
require_relative 'mark.rb'

begin
	obj_grid = GridCreator.create_grid(ARGV[0])
	puts "Input Values"
	obj_grid.display
	Mark.apply_grid_rules(obj_grid)
	puts "Output Values"
	obj_grid.display
rescue
	warn "Input pattern does not exists."
end
