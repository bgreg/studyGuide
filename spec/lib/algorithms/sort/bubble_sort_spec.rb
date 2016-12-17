require_relative "../../../../lib/algorithms/sort/bubble_sort"
require "spec_helper"

describe BubbleSort do
  describe "#sort" do
    context "Organizing arrays into numerical order is helpful when performing searching operations. "\
      "Bubble sort can arrange any array into acending or decending order by simply repeatedly switching "\
      "places with it's nearest neighbor. Called 'Bubble Sort' because outliers sink to the ends of the "\
      "list quickly and medium values slowly raise like bubbles to their final postions." do
      context "given a random list of numbers" do
        let(:randomized_array) do
          [
            73,
            82,
            54,
            7,
            88,
            11,
            8,
            93,
            99,
            74,
            18,
            2,
            90,
            80,
            93,
            42,
            36,
            31,
            19,
            71
          ]
        end

        it "Sorts this random set into acending orders." do
          bubble_sort = described_class.new(random_list: randomized_array, verbose: true)
          expect(bubble_sort.sort).to eq(
            [
              2,
              7,
              8,
              11,
              18,
              19,
              31,
              36,
              42,
              54,
              71,
              73,
              74,
              80,
              82,
              88,
              90,
              93,
              93,
              99,
            ]
          )
        end
      end
    end
  end
end
