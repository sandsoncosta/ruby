class Veiculo
    attr_accessor :nome, :marca, :modelo

    def initialize(nome, marca, modelo)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo
    end

    def ligar
        puts "#{nome} está pronto para inicar o trajeto."
    end

    def buzinar
        puts 'Beep! Beep!'
    end
end

class Carro < Veiculo
    def dirigir
        puts "#{nome} iniciou o trajeto."
    end
end

class Moto < Veiculo
    def pilotar
        puts "#{nome} iniciou o trajeto."
    end
end

siena = Carro.new('Sien2a', 'Fiat', 'XL')
siena.ligar
siena.buzinar
siena.dirigir

gol = Carro.new('Gol', 'Volkswagen', 'XEI')
gol.ligar
gol.buzinar
gol.dirigir

r3 = Moto.new('r3', 'Yamaha', 'ABS')
r3.ligar
r3.buzinar
r3.pilotar