require 'spec_helper'
require_relative '../life-neighbors'

# Row Above
describe TopLeft do
  it 'returns top left cell in relation to (2,2)' do
    top_left = TopLeft.new(2,2)
    expect(top_left.output).to eq([1,1])
  end
end

describe TopCenter do
  it 'returns top center cell in relation to (2,2)' do
    top_center = TopCenter.new(2,2)
    expect(top_center.output).to eq([1,2])
  end
end

describe TopRight do
  it 'returns top right cell in relation to (2,2)' do
    top_right = TopRight.new(2,2)
    expect(top_right.output).to eq([1,3])
  end
end

# Same Row
describe Left do
  it 'returns left cell in relation to (2,2)' do
    left = Left.new(2,2)
    expect(left.output).to eq([2,1])
  end
end

describe Right do
  it 'returns right cell in relation to (2,2)' do
    right = Right.new(2,2)
    expect(right.output).to eq([2,3])
  end
end

# Row Below
describe BottomLeft do
  it 'returns bottom left cell in relation to (2,2)' do
    bottom_left = BottomLeft.new(2,2)
    expect(bottom_left.output).to eq([3,1])
  end
end

describe BottomCenter do
  it 'returns bottom center cell in relation to (2,2)' do
    bottom_center = BottomCenter.new(2,2)
    expect(bottom_center.output).to eq([3,2])
  end
end

describe BottomRight do
  it 'returns bottom right cell in relation to (2,2)' do
    bottom_right = BottomRight.new(2,2)
    expect(bottom_right.output).to eq([3,3])
  end
end

describe Neighbors do
  grid = [[1, 1, 1],[0, 0, 0],[0, 0, 0]]

  it 'returns an array of all neighbors for cell (2,2)' do
    neighbors = Neighbors.new
    expect(neighbors.find_neighbors(2,2)).to eq(
      [[1,1], [1,2], [1,3], [2,1], [2,3], [3,1], [3,2], [3,3]]
      )
  end

  it 'finds the number of a cells living neighbors on a grid' do
    neighbors = Neighbors.new
    expect(neighbors.living_neighbors(1,1,grid)).to eq(3)
  end
end