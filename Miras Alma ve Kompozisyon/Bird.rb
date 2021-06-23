class Bird
  def initialize(type, color)
    @type = type
    @color = color
  end

  def info
    "Type of the bird is #{@type} and its color is #{@color}"
  end
end

my_bird = Bird.new("Marti", "Beyaz")
puts my_bird.info