class Sort
  def initialize(random_list:, verbose: false)
    @list       = random_list
    @last_index = @list.index(@list.last)
    @verbose    = verbose
  end

  protected

  def swap(original, replacement)
    puts "Swapping: #{@list[original]} and #{@list[replacement]}" if @verbose
    @list[original], @list[replacement] = @list[replacement], @list[original]
  end
end
