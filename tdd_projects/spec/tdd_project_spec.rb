require_relative "../lib/tdd_project"
require 'rspec'
system("clear")

describe 'Array#my_uniq' do
  let(:arr) { [1,2,1,3,3] } 

  it "does NOT call built in Array#uniq method" do
    expect(arr).not_to receive(:uniq)
    arr.my_uniq {}
  end
  
  it 'returns unique elements in order they first appeared' do
    expect(arr.my_uniq).to eq([1,2,3])
  end

end


describe 'Array#two_sum' do
  let(:arr) { [-1, 0, 2, -2, 1] } 
  
  it 'returns pairs of indices that sum to zero' do
    expect(arr.two_sum).to eq([[0, 4], [2, 3]])
  end

  it 'be sorted with the smaller index before the bigger index.' do
    expect(arr.two_sum).to_not eq([[4, 0], [3, 2]])
  end

end

describe 'Array#my_transpose' do
  let(:arr) { [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]
 } 

  it "does NOT call built in Array#transpose method" do
    expect(arr).not_to receive(:transpose)
    arr.my_transpose {}
  end

  it 'returns a transposed version of a two-dimensional array.' do
    expect(arr.my_transpose).to eq([
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8]
    ])
  end

end
