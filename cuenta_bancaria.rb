class CuentaBancaria
  attr_accessor :user_name

  def initialize(user_name, number, vip = 0)
    raise RangeError,"El numero de cuenta tiene un numero de digitos distinto de 8" if (number.digits).count != 8
    @user_name = user_name
    @number = number
    @vip = vip
  end

  def numero_de_cuenta
    return "#{@vip}-#{@number}"
  end
end

c1 = CuentaBancaria.new("Lissette", 12345678)
puts c1.numero_de_cuenta

c2 = CuentaBancaria.new("Gustavo", 98763214, 1)
puts c2.numero_de_cuenta

c3 = CuentaBancaria.new("Marcelo", 34981, 1)

c4 = CuentaBancaria.new("Anggelo", 4739247891,)