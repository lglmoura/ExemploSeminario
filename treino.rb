class Treino
  attr_accessor :codigo,:nome, :calorias, :treinosExercicios

  def initialize(codigo,nome,calorias,treinosExercicios=[])
  	@codigo = codigo
    @nome = nome
    @calorias = calorias
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