class AvengersHeadQuarter
    attr_accessor :list

    def initialize
        self.list = []
    end

    def put(avenger)
        self.list.push(avenger)
    end
end

# TDD (Desenvolvimento guiado por testes.)
describe AvengersHeadQuarter do

    it 'deve adicionar um vingador' do
        hq = AvengersHeadQuarter.new

        hq.put('Spiderman')
        expect(hq.list).to eql ['Spiderman']
    end

    it 'deve adicionar uma lista de vingadores' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        # Uma forma de fazer validação
        expect(hq.list.size).to be > 0
        # Outra forma de fazer validação
        res = hq.list.size > 0
        expect(res).to be true
    end

    it 'thor deve ser o primeiro da lista' do
        hq = AvengersHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        # Testa se 'Thor' é mesmo o primeiro da lista
        expect(hq.list).to start_with('Thor')
    end

    it 'thor deve ser o primeiro da lista' do
        hq = AvengersHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        hq.put('Ironman')

        # Testa se 'Ironman' é mesmo o último da lista
        expect(hq.list).to end_with('Ironman')
    end

    it 'deve conter o sobrenome' do
        avenger = 'Peter Parker'

        # Nesse teste foi usado uma expressão regular
        #Verifica se existe o nome
        expect(avenger).to match(/Parker/)
        
        # Nesse teste foi usado uma expressão regular
        # Verifica se não existe o nome.
        expect(avenger).not_to match(/Sandson/)
    end
end