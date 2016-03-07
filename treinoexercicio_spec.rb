require_relative 'treinoexercicio'

describe TreinoExercicio do
    before(:each) do
    	@treino = Treino.new("1","Luiz",540)
        @exercicio = Exercicio.new("1","supino",3)
        @treinosExercicios = TreinoExercicio.new("01",@treino,@exercicio)
    end

    it 'Codigo Exercicio' do
        expect(@treinosExercicios.codigo).to eql("01")
    end

    it 'Treino ' do
        expect(@treinosExercicios.treino).to eql(@treino)
    end

    it 'Exercicio' do
        expect(@treinosExercicios.exercicio).to eql(@exercicio)
    end
  

    after(:each) do
        @treino = nil
        @exercicio = nil
        @treinosExercicios = nil
    end
end
