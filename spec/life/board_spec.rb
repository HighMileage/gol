require 'spec_helper'

RSpec.describe Life::Board do

  it "has an x_lim and y_lim" do
    boardy = Life::Board.new([2,5], [])
    expect(boardy.x_lim).to eq(2)
    expect(boardy.y_lim).to eq(5)
  end

  it "returns a representation of the board" do
    boardy = Life::Board.new([10,5], [[1,1]])
    expect(boardy.draw).to eq("0 0 0 0 0\n0 X 0 0 0\n0 0 0 0 0\n0 0 0 0 0\n0 0 0 0 0\n")
  end
end
