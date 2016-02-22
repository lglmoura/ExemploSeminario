class Aluno
  attr_accessor :codigo,:nome, :matricula, :data_nascimento, :seminarios

  def initialize(codigo,nome,matricula,datanascimento,seminarios=[])
  	@codigo = codigo
    @nome = nome
    @matricula = matricula
    @data_nascimento = datanascimento
    @seminarios = seminarios
  end

  def incluir_seminarios(seminario)
    if not seminario? seminario
      @seminarios << seminario
    end
  end

  def seminario?(seminario)
    @seminarios.include? seminario
  end
end
