require 'spec_helper'
require_relative '../life-generation'

describe Generation do

  it 'maps out a neighborhood' do
    gen = Generation.new [[0,1], [1,2], [1,3], [2,1]]
    expect(gen.neighborhood).to eq({
      [0,1] => [[-1, 0], [-1, 1], [-1, 2], [0, 0], [0, 2], [1, 0], [1, 1], [1, 2]],
      [1,2] => [[0, 1], [0, 2], [0, 3], [1, 1], [1, 3], [2, 1], [2, 2], [2, 3]],
      [1,3] => [[0, 2], [0, 3], [0, 4], [1, 2], [1, 4], [2, 2], [2, 3], [2, 4]],
      [2,1] => [[1, 0], [1, 1], [1, 2], [2, 0], [2, 2], [3, 0], [3, 1], [3, 2]]
    })
  end

end