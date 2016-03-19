require_relative 'cell.rb'
require_relative 'grid.rb'

class Mark

	def self.apply_grid_rules(grid)

		grid.cells.each do |cell|
			neighbouring_live_cells = grid.search_neighbour_cells(cell).count

			if cell.dead? && if_rebirth_possible?(neighbouring_live_cells)
				cell.update_state(true)
			elsif cell.alive?
				if if_cell_lonely?(neighbouring_live_cells)
					cell.update_state(false)
				elsif if_cell_overcrowded?(neighbouring_live_cells)
					cell.update_state(false)
				end

			end
		end
		grid.update
	end

	def self.if_rebirth_possible?(neighbour_count)
    neighbour_count == 3
	end

  def self.if_cell_lonely?(neighbour_count)
    neighbour_count < 2
  end

  def self.if_cell_overcrowded?(neighbour_count)
    neighbour_count > 3
  end

end
