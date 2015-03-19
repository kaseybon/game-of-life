require 'spec_helper'
require_relative '../life-fate'

describe Fate do

  it 'will determine if a cell is born if it is dead and has 3 neighbors' do
    fate = Fate.new(0,3)
    expect(fate.cell_fate).to eq(:born)
  end

  it 'will determine if a cell will live if it is alive and has 3 neighbors' do
    fate = Fate.new(1,3)
    expect(fate.cell_fate).to eq(:live)
  end

  it 'will determine if a cell will live if it is alive and has 2 neighbors' do
    fate = Fate.new(1,2)
    expect(fate.cell_fate).to eq(:live)
  end

  it 'will determine if a cell will die if it is alive and has 1 neighbor' do
    fate = Fate.new(1,1)
    expect(fate.cell_fate).to eq(:dead)
  end

  it 'will determine if a cell will die if it is alive and has 4 neighbors' do
    fate = Fate.new(1,4)
    expect(fate.cell_fate).to eq(:dead)
  end

  it 'will determine if a cell will "die" if it is a dead cell and has 2 neighbors' do
    fate = Fate.new(0,2)
    expect(fate.cell_fate).to eq(:dead)
  end

  it 'will determine if a cell will "die" if it is a dead cell and has 4 neighbors' do
    fate = Fate.new(0,4)
    expect(fate.cell_fate).to eq(:dead)
  end

end