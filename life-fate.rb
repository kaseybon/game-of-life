class Fate
  def initialize(status,living_neighbors)
    @status = status # Cell value, either 0 or 1
    @living_neighbors = living_neighbors # Number of living neighbors
  end

  def cell_fate
    live = Live.new(@status,@living_neighbors)
    dead = Dead.new(@status,@living_neighbors)
    born = Born.new(@status,@living_neighbors)
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
    :born
  end
end

class Live < CellParams
  def does?
    true if @living_neighbors.between?(2,3) && @status == 1
  end
  def output
    :live
  end
end

class Dead < CellParams
  def does?
    true
  end
  def output
    :dead
  end
end