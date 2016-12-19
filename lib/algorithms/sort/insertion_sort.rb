require_relative "sort"

class InsertionSort < Sort
  def sort
    sorted_zone.each do |index|
      key = @list[index]
      print_search_start(key, index) if @verbose

      comparator = index - 1
      puts "First comparator set to: #{@list[comparator]}"
      while comparator >= 0 && @list[comparator] > key
        puts "#{@list[comparator]} is greater than #{key}"
        print_search_compare(comparator, comparator + 1) if @verbose
        @list[comparator + 1] = @list[comparator]
        comparator -= 1
      end

      @list[comparator + 1] = key
      print_key_position_found_message(comparator, key)
    end

    print_sort_finished_message
    @list
  end

  private

  def sorted_zone
    1.upto(@last_index)
  end

  #
  # Only printing functions down here
  #

  def print_search_start(key, index)
    puts "-" * 120
    puts "Already sorted zone:"
    puts "[#{@list[0..index - 1].join(" ")}]"
    puts
    puts "Key: #{key}"
    puts_key_pointer(index, show_list: true)
  end

  def print_search_compare(needle, comparator)
    puts "Replacing #{@list[needle]} with #{@list[comparator]}"
    puts_key_pointer(comparator, show_list: true)
    puts_key_pointer(needle, show_list: false)
  end

  def print_key_position_found_message(comparator, key)
    puts "Final position for key #{key} found"
    puts_key_pointer(comparator + 1, show_list: true, pointer: "^")
  end

  def puts_key_pointer(index, show_list: true, pointer: "^")
    display_list = @list.dup

    offset =
      if display_list[index].to_s.length > 1
        " " * (display_list[index].to_s.length - 1)
      else
        ""
      end

    display_list[index] = pointer + offset
    puts "[#{@list.join(" ")}]" if show_list
    puts " #{display_list.join(" ").gsub(/\d/, " ")} "
  end

  def print_sort_finished_message
    puts "Final list"
    puts "[#{@list.join(" ")}]" if @verbose
  end
end
