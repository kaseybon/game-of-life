class Neighbors
  # def find_neighbors(x,y)
  #   neighbor_array = [x+1, x, x-1, y+1, y, y-1].repeated_combination(2).to_a
  #   neighbor_array.uniq!
  #   neighbor_array.delete([x,y])
  #   print neighbor_array
  #   return neighbor_array
  # end
  def neighbor_map(x,y)
    map_array = []


    #Find Possible Neighbor Addresses
    # This doesn't work...
    ### neighbor_array = [x+1, x, x-1, y+1, y, y-1].repeated_combination(2).to_a
    ### neighbor_array.uniq!
    ### neighbor_array.delete([x,y])


    # Above
    starting = y-1
    ending = y + 1

    (starting..ending).each do |i|
      map_array << [x-1, i]
    end



    # Beside
    starting = y-1
    ending = y + 1

    (starting..ending).each do |i|
      map_array << [x, i]
    end
    map_array.delete([x,y])

    # Below
    starting = y-1
    ending = y + 1

    (starting..ending).each do |i|
      map_array << [x+1, i]
    end
   
    # remove neighbors with negative values
    # neighbor_array.each do |check|
    #   if check.any? { |x| x < 0 || x >= grid.length || x >= grid[0].length }
    #     check.clear
    #   end
    # end
    
    #neighbor_array = neighbor_array.delete_if { |elem| elem.flatten.empty? }

    # neighbor_array.each do |check|
    #   x = check[0]
    #   y = check[1]
    #   neighbor_values << grid[x][y]
    # end
    
    #return valid_neighbors = neighbor_values.select{ |x| x == 1 }.length
    map_array

  end
end