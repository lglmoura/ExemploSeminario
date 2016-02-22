require_relative 'aluno'

describe Aluno do
    before(:each) do
        @tipo_seminario = TipoSeminario.new("12345","Luiz")
        @seminario = Seminario.new("1111","Teste",1,@tipo_seminario)
        @aluno = Aluno.new("1","Luiz","12345","10/01/01")
    end

    it 'Codigo Aluno' do
        expect(@aluno.codigo).to eql("1")
    end

    it 'Nome Aluno' do
        expect(@aluno.nome).to eql("Luiz")
    end

    it 'Matricula Aluno' do

        expect(@aluno.matricula).to eql("12345")
    end
  

    it 'Data Nascimento Aluno' do

        expect(@aluno.data_nascimento).to eql("10/01/01")
    end

    it 'Incluir seminario ' do
      @aluno.incluir_seminarios(@seminario)
      expect(@aluno.seminarios.include? @seminario).to eq true
    end

    it 'Verificar  seminario ' do
      @aluno.incluir_seminarios(@seminario)
      expect(@aluno.seminario? @seminario).to eq true
    end

    after(:each) do
        @aluno = nil
    end
end
