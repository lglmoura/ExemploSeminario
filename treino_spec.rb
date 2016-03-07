require_relative 'treino'

describe Treino do
    before(:each) do
        @treino = Treino.new("1","Luiz",540)
        @exercicio = Exercicio.new("1","supino",3)
        @treinosExercicios = TreinoExercicio.new("01",@treino,@exercicio)
    end

    it 'Codigo Treino' do
        expect(@treino.codigo).to eql("1")
    end

    it 'Nome Treino' do
        expect(@treino.nome).to eql("Luiz")
    end

    it 'Calorias Treino' do

        expect(@treino.calorias).to eql(540)
    end
  

    it 'Incluir TreinoExercicio ' do
      @treino.incluir_treinosExercicios(@treinosExercicios)
      expect(@treino.treinosExercicios.include? @treinosExercicios).to eq true
    end

    it 'Verificar  treinosExercicios ' do
      @treino.incluir_treinosExercicios(@treinosExercicios)
      expect(@treino.treinosExercicios? @treinosExercicios).to eq true
    end

    after(:each) do
        @treino = nil
    end
end
