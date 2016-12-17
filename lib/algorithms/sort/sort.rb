class Sort
  def initialize(random_list:, verbose: false)
    @list       = random_list
    @verbose    = verbose
    @last_index = @list.index(@list.last)
  end

  protected

  def swap(original_index:, replacement_index:)
    puts "Swapping: #{@list[original_index]} and #{@list[replacement_index]}" if @verbose
    @list[original_index], @list[replacement_index] = @list[replacement_index], @list[original_index]
  end
end
