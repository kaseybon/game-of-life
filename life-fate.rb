class Fate
  def cell_fate(status,living_neighbors)
    live = Live.new(status,living_neighbors)
    dead = Dead.new(status,living_neighbors)
    born = Born.new(status,living_neighbors)
    fate = nil

    [born, live, dead].each do |check|
      if check.does?
        fate = check.output
        break
      end
    end
    fate
  end

end

class CellParams
  def initialize(status,living_neighbors)
    @status = status
    @living_neighbors = living_neighbors
  end
end

class Born < CellParams
  def does?
    true if @living_neighbors == 3 && @status == 0
  end
  def output
    1 #:born
  end
end

class Live < CellParams
  def does?
    true if @living_neighbors.between?(2,3) && @status == 1
  end
  def output
    1 #:live
  end
end

class Dead < CellParams
  def does?
    true
  end
  def output
    0 #:dead
  end
end