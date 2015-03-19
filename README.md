Game of Life
============

Description
-----------

Your task is to write a program to calculate the next
generation of Conway's game of life, given any starting
position. You start with a two dimensional grid of cells,
where each cell is either alive or dead. The grid is finite,
and no life can exist off the edges. When calculating the
next generation of the grid, follow these four rules:

1. Any live cell with fewer than two live neighbors dies,
   as if caused by underpopulation.
2. Any live cell with more than three live neighbors dies,
   as if by overcrowding.
3. Any live cell with two or three live neighbors lives
   on to the next generation.
4. Any dead cell with exactly three live neighbors becomes
   a live cell.

([Source](https://github.com/garora/TDD-Katas#game-of-life-))

Progress
--------

1. [Find all neighbors of a given cell](life-neighbors.rb) ([tests](spec/life-neighbors_spec.rb))
2. [Convert grid in text file to two dimensional array](life-grid.rb) ([tests](spec/life-grid_spec.rb))
3. [Cell returns it's current status: live or dead](life-cell.rb) ([tests](spec/life-cell_spec.rb))
4. [Fate will determine a cell_fate: born, live or dead](life-fate.rb) ([tests](spec/life-fate_spec.rb))

Notes
-----

* All files should be independent of each other except life-generation.rb
  - [x] cell
  - [x] fate
  - [x] grid
  - [x] neighbors
  - [ ] living neighbors
* The Generation class should, for each cell in the grid and:
  - [ ] find living neighbors
  - [ ] get current status
  - [ ] return determined fate
  - [ ] add cell's new status to a next_gen hash

### Functions to use in Generation

grid.start_grid(num)

neighbors.find_neighbors(x,y)

fate.cell_fate(status, living_neighbors)

cell.cell_status