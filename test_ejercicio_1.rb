require_relative 'ejercicio_1.rb'
require 'test/unit'

class TestEjercicio1 < Test::Unit::TestCase
  def setup
    @hombre = Hombre.new
  end
  def test_empty_string
    assert_equal('Estoy caminando', @hombre.caminar())
  end
end