require_relative "sort"

class BubbleSort < Sort
  def sort
    still_sorting = true

    while(still_sorting) do
      a_swap_happened = false

      0.upto(@last_index).each do |i|
        puts "@list #{@list}" if @verbose
        break if i == @last_index

        if @list[i] > @list[i + 1]
          swap(original_index: i, replacement_index: i + 1)
          a_swap_happened = true
        end
      end

      puts "\n" if @verbose
      still_sorting = false unless a_swap_happened
    end
    @list
  end
end
