class TipoSeminario
  attr_accessor :nome, :codigo, :seminarios

  def initialize(codigo,nome,seminarios=[])
    @nome = nome
    @codigo = codigo
    @seminarios = seminarios
  end

  def incluir_seminarios(seminario)
    if not seminario?(seminario)
      @seminarios << seminario
    end
  end

  def seminario?(seminario)
    @seminarios.include? seminario
  end
end
