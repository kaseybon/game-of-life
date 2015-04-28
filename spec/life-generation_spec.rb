require 'spec_helper'
require_relative '../life-generation'

describe Generation do

  it 'maps out a neighborhood' do
    gen = Generation.new [[0,1], [1,2], [1,3], [2,1]]
    expect(gen.neighborhood).to eq({
      [0,1] => [],
      [1,2] => [],
      [1,3] => [],
      [2,1] => []
    })
  end

end