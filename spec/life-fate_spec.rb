require 'spec_helper'
require_relative '../life-fate'

describe Fate do

  it 'will determine if a cell is born if it is dead and has 3 neighbors' do
    fate = Fate.new
    expect(fate.cell_fate(:dead,3)).to eq(1)
  end

  it 'will determine if a cell will live if it is alive and has 3 neighbors' do
    fate = Fate.new
    expect(fate.cell_fate(:live,3)).to eq(1)
  end

  it 'will determine if a cell will live if it is alive and has 2 neighbors' do
    fate = Fate.new
    expect(fate.cell_fate(:live,2)).to eq(1)
  end

  it 'will determine if a cell will die if it is alive and has 1 neighbor' do
    fate = Fate.new
    expect(fate.cell_fate(:live,1)).to eq(0)
  end

  it 'will determine if a cell will die if it is alive and has 4 neighbors' do
    fate = Fate.new
    expect(fate.cell_fate(:live,4)).to eq(0)
  end

  it 'will determine if a cell will "die" if it is a dead cell and has 2 neighbors' do
    fate = Fate.new
    expect(fate.cell_fate(:dead,2)).to eq(0)
  end

  it 'will determine if a cell will "die" if it is a dead cell and has 4 neighbors' do
    fate = Fate.new
    expect(fate.cell_fate(:dead,4)).to eq(0)
  end

end