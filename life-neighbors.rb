class Neighbors
  # def initialize(x,y)
  #   @x = x
  #   @y = y
  # end
  def find_neighbors(x,y)
    neighbor_array = []

    top_left = TopLeft.new(x,y)
    top_center = TopCenter.new(x,y)
    top_right = TopRight.new(x,y)

    left = Left.new(x,y)
    right = Right.new(x,y)

    bottom_left = BottomLeft.new(x,y)
    bottom_center = BottomCenter.new(x,y)
    bottom_right = BottomRight.new(x,y)

    [top_left, top_center, top_right, left, right, bottom_left, bottom_center, bottom_right].each do |check|
      neighbor_array << check.output
    end
    return neighbor_array
  end
  def living_neighbors(x,y, grid)
    neighbors = find_neighbors(x,y)
    neighbor_values = []

    neighbors.each do |check|
      x = check[0]
      y = check[1]
      neighbor_values << grid[x][y]
    end
    valid_neighbors = neighbor_values.select{ |x| x == 1 }.length
  end
end

class FindNeighborParams
  def initialize(x,y)
    @x = x
    @y = y
  end
end

# Row Above
class TopLeft < FindNeighborParams
  def output
    [@x-1, @y-1]
  end
end

class TopCenter < FindNeighborParams
  def output
    [@x-1, @y]
  end
end

class TopRight < FindNeighborParams
  def output
    [@x-1, @y+1]
  end
end

# Same Row
class Left < FindNeighborParams
  def output
    [@x, @y-1]
  end
end

class Right < FindNeighborParams
  def output
    [@x, @y+1]
  end
end

# Row Below
class BottomLeft < FindNeighborParams
  def output
    [@x+1, @y-1]
  end
end

class BottomCenter < FindNeighborParams
  def output
    [@x+1, @y]
  end
end

class BottomRight < FindNeighborParams
  def output
    [@x+1, @y+1]
  end
end