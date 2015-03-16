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

1. [Find all neighbors of a given cell](life-neighbors.rb)