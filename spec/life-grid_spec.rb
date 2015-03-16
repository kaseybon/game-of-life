require 'spec_helper'
require_relative '../life-grid'

describe Grid do

  it 'creates a grid array from a text file' do
    grid = Grid.new
    expect(grid.start_grid).to eq(
        [
          [1, 1, 1],
          [0, 0, 0],
          [0, 0, 0]
        ]
      )
  end

end