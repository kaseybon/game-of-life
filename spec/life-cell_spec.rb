require 'spec_helper'
require_relative '../life-cell'

describe Cell do

  it 'returns alive if cells value is a 1' do
    cell = Cell.new
    expect(cell.status(1)).to eq(:live)
  end

  it 'returns dead if cells value is a 0' do
    cell = Cell.new
    expect(cell.status(0)).to eq(:dead)
  end

end