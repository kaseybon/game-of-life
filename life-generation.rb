require_relative 'life-neighbors'
require_relative 'life-fate'

class Generation

  def initialize(living_cells)
    @living_cells = living_cells
    @evolved_grid = []
  end

  def neighborhood
    living_conditions = {}
    
    @living_cells.each do |x|
      potential_neighbors = Neighbors.new.neighbor_map(x[0], x[1])
      non_living_neighbors = (potential_neighbors - @living_cells)
      living_neighbors = (8 - non_living_neighbors.length)

      living_conditions.store(x, living_neighbors)
    end

    living_conditions
  end

  def evolve

    # Create a map of the neighborhood
    

    # Determine the fate of the living cells
    @living_conditions.each do |key, value|
      fate = Fate.new
      
      if fate.cell_fate(1, value)
        @evolved_grid << key
      end
    end

    print @evolved_grid
    @evolved_grid
  end
end