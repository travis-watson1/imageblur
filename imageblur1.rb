

class Image
  attr_accessor :arr

  def initialize(arr)
    @arr = arr
  end

  def output_image
    #Is there a difference between collect and map?
    if @arr.empty?
      puts "Enter valid data."
      return
    else
      @arr.map { |x| puts x.join(" ")}
  end
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.output_image
