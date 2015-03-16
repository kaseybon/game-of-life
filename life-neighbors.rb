class Neighbors
  def initialize(x,y)
    @x = x
    @y = y
  end
  def find_neighbors
    neighbor_array = []

    top_left = TopLeft.new(@x, @y)
    top_center = TopCenter.new(@x, @y)
    top_right = TopRight.new(@x, @y)

    [top_left, top_center, top_right].each do |check|
      neighbor_array << check.output
    end
    return neighbor_array
  end
end

class FindNeighborParams
  def initialize(x,y)
    @x = x
    @y = y
  end
end

class TopLeft < FindNeighborParams
  def output
    [@x-1, @y-1]
  end
end

class TopCenter < FindNeighborParams
  def output
    [@x, @y-1]
  end
end

class TopRight < FindNeighborParams
  def output
    [@x+1, @y-1]
  end
end
