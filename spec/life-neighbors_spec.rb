require 'spec_helper'
require_relative '../life-neighbors'

describe Neighbors do
  let(:neighbors) { Neighbors.new }

  it 'returns a list of neighbors addresses for cell 2,2' do
    expect(neighbors.neighbor_map(2,2)).to eq([
        [1,1], [1,2], [1,3], [2,1], [2,3], [3,1], [3,2], [3,3]
      ])
  end

  it 'returns a list of neighbors addresses for cell 0,0' do
    expect(neighbors.neighbor_map(0,0)).to eq([
        [-1,-1], [-1,0], [-1,1], [0,-1], [0,1], [1,-1], [1,0], [1,1]
      ])
  end

  it 'returns a list of neighbors addresses for cell 0,2' do
    expect(neighbors.neighbor_map(0,2)).to eq([
        [-1,1], [-1,2], [-1,3], [0,1], [0,3], [1,1], [1,2], [1,3]
      ])
  end

  it 'returns a list of neighbors addresses for cell 6,10' do
    expect(neighbors.neighbor_map(6,10)).to eq([
        [5,9], [5,10], [5,11], [6,9], [6,11], [7,9], [7,10], [7,11]
      ])
  end

  it 'returns a list of neighbors addresses for cell 6,10' do
    expect(neighbors.neighbor_map(10,6)).to eq([
        [9,5], [9,6], [9,7], [10,5], [10,7], [11,5], [11,6], [11,7]
      ])
  end
end