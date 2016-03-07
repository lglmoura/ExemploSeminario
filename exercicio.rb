class Exercicio
  attr_accessor :codigo,:nome, :serie, :treinosExercicios

  def initialize(codigo,nome,serie,treinosExercicios=[])
  	@codigo = codigo
    @nome = nome
    @serie = serie
    @treinosExercicios = treinosExercicios
  end

  def incluir_treinosExercicios(treinosExercicios)
    if not treinosExercicios? treinosExercicios
      @treinosExercicios << treinosExercicios
    end
  end

  def treinosExercicios?(treinosExercicios)
    @treinosExercicios.include? treinosExercicios
  end
end