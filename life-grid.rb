class Grid
  def start_grid(num)
    grid = []

    File.open("generations/grid-#{num}.txt").readlines.each do |line|
      grid << line.split(", ").map { |s| s.to_i }
    end
    return grid
  end
end