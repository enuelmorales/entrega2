class Mamifero
end

class Aves
end

class Reptiles
end

class Anfibios
end

class Peces
end


class Hombre < Mamifero
  def caminar
    puts 'Estoy caminando'
  end
  def nadar
    puts 'Estoy nadando'
  end
  def hablar
    puts 'Estoy hablando'
  end
end

class Perro < Mamifero
  def caminar
    puts 'Estoy caminando'
  end
  def ladrar
    puts 'Estoy ladrando'
  end
end

class Ballena < Mamifero
  def nadar
    puts 'Estoy nadando'
  end
end


class Aguila < Aves
  def volar
    puts 'Estoy volando'
  end
  def caminar
    puts 'Estoy caminando'
  end
end

class Pinguino < Aves
  def caminar
    puts 'Estoy caminando'
  end
  def nadar
    puts 'Estoy nadando'
  end
end


class Cocodrilo < Reptiles
  def caminar
    puts 'Estoy caminando'
  end
  def nadar
    puts 'Estoy nadando'
  end
end

class Boa < Reptiles
  def desplazarse
    puts 'Estoy desplazandome'
  end
  def constriccion
    puts 'Estoy constriccionandome'
  end
end

class Cobra < Reptiles
  def desplazarse
    puts 'Estoy desplazandome'
  end
  def morder
    puts 'Estoy mordiendo'
  end
end


class Sapos < Anfibios
  def saltar
    puts 'Estoy saltando'
  end
  def nadar
    puts 'Estoy nadando'
  end
end


class Tiburones < Peces
  def nadar
    puts 'Estoy nadando'
  end
end

mamifero = Mamifero.new