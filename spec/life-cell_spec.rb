require 'spec_helper'
require_relative '../life-cell'

describe Cell do

  it 'returns alive if cells value is a 1' do
    cell = Cell.new(1)
    expect(cell.status).to eq(:alive)
  end

  it 'returns dead if cells value is a 0' do
    cell = Cell.new(0)
    expect(cell.status).to eq(:dead)
  end

end