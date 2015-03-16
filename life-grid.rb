class Grid
  def start_grid
    grid = []

    File.open("generations/grid-1.txt").readlines.each do |line|
      grid << line.split(", ").map { |s| s.to_i }
    end
    return grid
  end
end