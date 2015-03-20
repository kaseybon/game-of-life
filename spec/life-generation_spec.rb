require 'spec_helper'
require_relative '../life-generation'

describe 'generation' do
  it 'returns next generation of a grid' do 
    generation = generation(1)
    expect(generation).to eq(
      [
        [0,1,0],
        [0,1,0],
        [0,0,0]
      ]
    )
  end
end