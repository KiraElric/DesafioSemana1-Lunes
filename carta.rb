class Carta

  attr_accessor :number, :color

  def initialize(number, color)
    @number = number
    @color = color
  end
  
  def to_s
    return "#{@number}-#{@color}"
  end
end

cards = []
n = 0
while (n < 5)
  color = ['C','D','E','T'].sample
  number = Random.rand(1..13)
  card = Carta.new(number,color)
  if !(cards.map{|x| x.to_s}.include? card.to_s)
    cards.push(card)
    n += 1
  end
end

puts cards