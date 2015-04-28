require 'spec_helper'
require_relative '../life-generation'

describe Generation do

  let(:gen) { Generation.new [[0,1], [1,2], [1,3], [2,1]] }

  it 'maps out a neighborhood and checks the living conditions' do
    # keeping this here to show an example of the potential neighbors hash... just in case
    # expect(gen.neighborhood).to eq({
    #   [0,1] => [[-1, 0], [-1, 1], [-1, 2], [0, 0], [0, 2], [1, 0], [1, 1], [1, 2]],
    #   [1,2] => [[0, 1], [0, 2], [0, 3], [1, 1], [1, 3], [2, 1], [2, 2], [2, 3]],
    #   [1,3] => [[0, 2], [0, 3], [0, 4], [1, 2], [1, 4], [2, 2], [2, 3], [2, 4]],
    #   [2,1] => [[1, 0], [1, 1], [1, 2], [2, 0], [2, 2], [3, 0], [3, 1], [3, 2]]
    # })
    expect(gen.neighborhood).to eq({
        [0,1] => 1,
        [1,2] => 3,
        [1,3] => 1,
        [2,1] => 1
      })
  end

  it 'returns the next generation' do
    expect(gen.evolve).to eq([])
  end

end