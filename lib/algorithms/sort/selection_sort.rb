require_relative "sort"

class SelectionSort < Sort
  def sort
    0.upto(@last_index).each do |i|
      puts "@list: #{@list}" if @verbose
      smallest = i

      (i + 1).upto(@last_index).each do |j|
        smallest = j if @list[j] < @list[smallest]
      end

      swap(original_index: i, replacement_index: smallest)
      puts "\n" if @verbose
    end

    @list
  end
end
