require_relative 'exercicio'

describe Exercicio do
    before(:each) do
        @treino = Treino.new("1","Luiz",540)
        @exercicio = Exercicio.new("1","supino",3)
        @treinosExercicios = TreinoExercicio.new("01",@treino,@exercicio)
    end

    it 'Codigo Exercicio' do
        expect(@exercicio.codigo).to eql("1")
    end

    it 'Nome Exercicio' do
        expect(@exercicio.nome).to eql("supino")
    end

    it 'Calorias Exercicio' do

        expect(@exercicio.serie).to eql(3)
    end
  

    it 'Incluir TreinosExercicios ' do
      @exercicio.incluir_treinosExercicios(@treinosExercicios)
      expect(@exercicio.treinosExercicios.include? @treinosExercicios).to eq true
    end

    it 'Verificar  treinosExercicios ' do
      @exercicio.incluir_treinosExercicios(@treinosExercicios)
      expect(@exercicio.treinosExercicios? @treinosExercicios).to eq true
    end

    after(:each) do
        @exercicio = nil
    end
end
