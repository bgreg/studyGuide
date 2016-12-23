require_relative "../../../../lib/algorithms/sort/merge_sort"
require "spec_helper"

describe MergeSort do
  describe "#sort" do
    context "Arranging items by first recursively divinding the list into groups of one or two,"\
            "sorting these small groups, then reassembling the groups. Merge Sort is considered a "\
            "divide and conquer algorightm" do
      context "given a random list of numbers" do
        let(:randomized_array) do
          [73, 82, 54, 7, 88, 11, 8, 93, 99, 74, 18, 2, 90, 80, 93, 42, 36, 31, 19, 71]
        end

        it "produces a sorted array of 5 elements" do
          merge_sort = described_class.new(random_list: [73, 82, 54, 7, 88], verbose: true)
          expect(merge_sort.sort).to eq([7, 54, 73, 82, 88])
        end

        it "produces a sorted array of 10 elements" do
          merge_sort = described_class.new(random_list: [73, 82, 54, 7, 88, 11, 8, 93, 99, 74], verbose: true)
          expect(merge_sort.sort).to eq([7, 8, 11, 54, 73, 74, 82, 88, 93, 99])
        end

        it "produces a sorted array of 20 elements" do
          merge_sort = described_class.new(random_list: randomized_array, verbose: true)
          expect(merge_sort.sort).to eq(
            [2, 7, 8, 11, 18, 19, 31, 36, 42, 54, 71, 73, 74, 80, 82, 88, 90, 93, 93, 99,]
          )
        end
      end
    end
  end
end
