begin
    # Devo tentar alguma coisa aqui...
    file = File.open('./ola.txt')
    if file
        puts file.read
    end
rescue Exception => e
    # Obter um possível erro...
    puts e
end

# def soma(n1, n2)
#     n1 + n2
# rescue Exception => e
#     puts e.message
#     puts e.backtrace
#     puts 'Deu ruim'

# end

# soma('10', 5)