require_relative 'life-grid'
require_relative 'life-neighbors'
require_relative 'life-cell'
require_relative 'life-fate'

def generation(grid)
  world = Grid.new.start_grid(grid)
  next_gen_grid = []

  
  # Loop through each array in the world array
  world.length.times do |x|

    # While in each array, loop through each item
    world[x].length.times do |y|

      living_neighbors = Neighbors.new.living_neighbors(x,y,world)
      fate = Fate.new.cell_fate(world[x][y], living_neighbors)
      
      next_gen_grid << fate
    end # end y loop
  end # end x loop

  # Convert next_gen_grid a 2D array
  next_gen_grid = next_gen_grid.each_slice(world[0].length).to_a
  
  return next_gen_grid
end