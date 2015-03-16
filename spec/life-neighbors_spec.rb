require 'spec_helper'
require_relative '../life-neighbors'

describe TopLeft do
  it 'returns top left cell in relation to (2,2)' do
    top_left = TopLeft.new(2,2)
    expect(top_left.output).to eq([1,1])
  end
end

describe TopCenter do
  it 'returns top center cell in relation to (2,2)' do
    top_center = TopCenter.new(2,2)
    expect(top_center.output).to eq([2,1])
  end
end

describe TopRight do
  it 'returns top right cell in relation to (2,2)' do
    top_right = TopRight.new(2,2)
    expect(top_right.output).to eq([3,1])
  end
end