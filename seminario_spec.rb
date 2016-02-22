
require_relative 'seminario'

describe Seminario do

    before(:each) do
        @tipo_seminario = TipoSeminario.new("12345","Luiz")
        @seminario = Seminario.new("1111","Teste",1,@tipo_seminario)
        @aluno = Aluno.new("1","Luiz","12345","10/01/01")
    end

    it 'Codigo Seminario' do
        expect(@seminario.codigo).to eql("1111")
    end

    it 'Descricao Seminario' do

        expect(@seminario.descricao).to eql("Teste")
    end

    it 'Tipo Seminario' do

        expect(@seminario.tipo).to eql(@tipo_seminario)
    end

    it 'Incluir Aluno em seminario ' do
      @seminario.incluir_alunos(@aluno)
      expect(@seminario.alunos.include? @aluno).to eq true
    end

    it 'Verificar Aluno em seminario ' do
      @seminario.incluir_alunos(@aluno)
      expect(@seminario.aluno? @aluno).to eq true
    end

    it 'verificar NumMax' do
      aluno2 = Aluno.new("2","Luiz2","2212345","10/01/01")
      @seminario.incluir_alunos(@aluno)
      @seminario.incluir_alunos(aluno2)
      expect(@seminario.aluno? aluno2).to eq false


    end

    after(:each) do
        @seminario = nil
        @aluno = nil
    end
end
