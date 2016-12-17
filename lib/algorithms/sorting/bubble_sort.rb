class BubbleSort
  def initialize(random_list:, verbose: false)
    @list       = random_list
    @last_index = @list.index(@list.last)
    @verbose    = verbose
  end

  def sort
    still_sorting   = true
    a_swap_happened = false

    while(still_sorting) do
      0.upto(@last_index).each do |i|
        break if i == @last_index
        puts "@list #{@list}" if @verbose

        if @list[i] > @list[i + 1]
          swap(i, i + 1)
          puts "Swapping: #{@list[i]} and #{@list[i + 1]}" if @verbose
          a_swap_happened = true
        else
          a_swap_happened = false
        end
      end
      puts "\n" if @verbose

      still_sorting = false unless a_swap_happened
    end

    @list
  end

  private

  def swap(original, replacement)
    @list[original], @list[replacement] = @list[replacement], @list[original]
  end
end
