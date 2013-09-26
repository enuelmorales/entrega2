class Pruchase
  attr_accessor :products

  def initialize
    self.products = []
  end
  def add(product)
    self.products[product.code] << product
  end
  def delete(product)
    delete self.products[product.code]
  end
  def total
    self.products.inject { |sum, prod| sum + prod.price }
  end

  def apply_discount
    yield |self|
  end
end

class Product
  attr_accessor :cod, :name, :price

  def initialize(cod, name, price)
    self.cod = cod
    self.name = name
    self.price = price
  end
end


p1 = Product.new '01', 'Martillo', '50'
p2 = Product.new '02', 'Clavos x 100', '10'

p = Purchase.new
p.add p1
p.add p2

p.total
# => 60

# Descuento de 10% en tu compra si llevás algún martillo!
p.apply_discount do |purchase|
  hammers = purchase.products.collect { |product| product.code == '01'  }
  purchase.total -= purchase.total * 0.1 if hammers.any?
end

p.total
# => 54.0

p.apply_discount do |purchase|
  purchase.total -= purchase.total * 0.2 if purchase.products.size > 10
end

p.apply_discount do |purchase|
  iguales = []
  purchase.products.each do |product|
    iguales[product.name] += 1
  end
  purchase.products.each do |product|
    if iguales[product.name] > 3
      purchase.total -= product.price
      iguales[product.name] = -1
    end
  end
end
