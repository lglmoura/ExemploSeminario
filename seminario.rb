class Seminario
  attr_accessor :codigo, :descricao, :numMax, :alunos,:tipo

  def initialize(codigo,descricao,numMax,alunos=[],tipo)
    @codigo = codigo
    @descricao = descricao
    @numMax = numMax
    @tipo   = tipo
    @alunos = alunos
    
  end

  def incluir_alunos(aluno)
    if (not aluno? aluno) && alunos.size < numMax
      @alunos << aluno
    end
  end

  def aluno?(aluno)
    @alunos.include? aluno
  end
end
