class Carta

  attr_accessor :number, :color

  def initialize(number, color)
    @number = number
    @color = color
  end
  
  def to_s
    return "#{@number} #{@color}"
  end
end

cards = []
5.times do
  color = ['C','D','E','T'].sample
  number = Random.rand(1..13)
  cards.push(Carta.new(number,color))
end

puts cards