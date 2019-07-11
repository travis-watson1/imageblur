class Image
    attr_accessor :arr, :distance

    def initialize(arr)
      @arr = arr
    end

    def blur(distance)
      ones = look_for_ones_and_store_them_in_new_array

      @arr.each_with_index do |row_value, row|
        row_value.each_with_index do |col_value, col|
          ones.each do |a, b|
            if (a - row).abs + (b - col).abs <= distance # https://stackoverflow.com/questions/8224470/calculating-manhattan-distance
              @arr[row][col] = 1
            end
          end
        end
      end
    end

    def look_for_ones_and_store_them_in_new_array
      ones = []

      @arr.each_with_index do |row_value, row|
        row_value.each_with_index do |col_value, col|
          if col_value == 1
            ones << [row, col]
          end
        end
      end
      return ones
    end
  
    def output_image
        @arr.map { |x| puts x.join(" ")}
    end
  end
  
  image = Image.new([
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 1]
  ])
  
  
 image.blur(3)
 image.output_image

  