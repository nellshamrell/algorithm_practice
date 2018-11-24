RSpec.describe RubyAlgorithmKoans do
  it "has a version number" do
    expect(RubyAlgorithmKoans::VERSION).not_to be nil
  end

  it "sorts an array of integers using the bubble sort" do
    expect(RubyAlgorithmKoans.bubble_sort([1, 3, 6, 5, 2, 4])).to eq([1, 2, 3, 4, 5, 6])
  end

  it "sorts an array of integers using the merge sort" do
    expect(RubyAlgorithmKoans.merge_sort([1, 3, 6, 5, 2, 4])).to eq([1, 2, 3, 4, 5, 6])
  end

  it "sorts an array of integers using the quick sort" do
    expect(RubyAlgorithmKoans.quick_sort([1, 3, 6, 5, 2, 4])).to eq([1, 2, 3, 4, 5, 6])
  end

  it "sorts an array of integers using the selection sort" do
    expect(RubyAlgorithmKoans.selection_sort([1, 3, 6, 5, 2, 4])).to eq([1, 2, 3, 4, 5, 6])
  end
end
