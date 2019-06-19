class Image
  attr_accessor :arr

  def initialize(arr)
    @arr = arr
  end

  def check_for_one

    @arr.each_with_index do |row_value, row|
      row_value.each_with_index do |col_value, col|
        if col_value == 1
          if row == 0
            @arr[row+1][col] = "1"
          end
          if row > 0 && row < @arr.length-1
            @arr[row-1][col] = "1"
            @arr[row+1][col] = "1"
          end
          if row == @arr.length-1
            @arr[row-1][col] = "1"
          end
          if col == 0
            @arr[row][col+1] = "1"
          end
          if col > 0 && col < row_value.length-1
            @arr[row][col-1] = "1"
            @arr[row][col+1] = "1"
          end
          if col == row_value.length-1
            @arr[row][col-1] = "1"
          end
        end
      end
    end
  end

  def output_image
      @arr.map { |x| puts x.join(" ")}
  end
end

image = Image.new([
  [1, 0, 0, 1, 0],
  [0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0],
  [1, 0, 0, 0, 1]
])



image.check_for_one
image.output_image
