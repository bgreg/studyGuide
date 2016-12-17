require_relative "sort"

class InsertionSort < Sort
  def sort
    puts "\n" if @verbose

    1.upto(@last_index).each do |index|
      puts "@list: #{@list}" if @verbose
      key = @list[index]
      puts "key: #{key}" if @verbose
      j = index - 1

      while j >= 0 && @list[j] > key
        puts "replacing #{@list[j + 1]} with #{@list[j]}" if @verbose
        @list[j + 1] = @list[j]
        j -= 1
      end

      @list[j + 1] = key
      puts "\n" if @verbose
    end

    puts "@list: #{@list}" if @verbose
    @list
  end
end
