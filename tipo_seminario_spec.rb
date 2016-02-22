require_relative 'tipo_seminario'

describe TipoSeminario do
    before(:each) do
        @tipo_seminario = TipoSeminario.new("12345","Luiz")
        @seminario = Seminario.new("1111","Teste",1,@tipo_seminario)
    end

    it 'Nome TipoSeminario' do
        expect(@tipo_seminario.nome).to eql("Luiz")
    end

    it 'Codigo TipoSeminario' do

        expect(@tipo_seminario.codigo).to eql("12345")
    end

    it 'Incluir seminario ' do
      @tipo_seminario.incluir_seminarios(@seminario)
      expect(@tipo_seminario.seminarios.include? @seminario).to eq true
    end

    it 'Verificar  seminario ' do
      @tipo_seminario.incluir_seminarios(@seminario)
      expect(@tipo_seminario.seminario? @seminario).to eq true
    end

    after(:each) do
        @tipo_seminario = nil
    end
end