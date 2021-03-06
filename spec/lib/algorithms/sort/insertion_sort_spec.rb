require_relative "../../../../lib/algorithms/sort/insertion_sort"
require "spec_helper"

describe InsertionSort do
  describe "#sort" do
    context "Grabs items from the right of the array and finds where it belongs in the sorted, left side." do
      context "given a random list of numbers" do
        let(:randomized_array) do
          [73, 82, 54, 7, 88, 11, 8, 93, 99, 74, 18, 2, 90, 80, 93, 42, 36, 31, 19, 71]
        end

        it "produces a sorted array" do
          insertion_sort = described_class.new(random_list: randomized_array, verbose: true)
          expect(insertion_sort.sort).to eq(
            [2, 7, 8, 11, 18, 19, 31, 36, 42, 54, 71, 73, 74, 80, 82, 88, 90, 93, 93, 99,]
          )
        end
      end
    end
  end
end
