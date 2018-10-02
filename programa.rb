#require_relative "personagem"
require_relative "heroi"
require_relative "monstro"
require_relative "adaga"

require 'pry'

heroi = Heroi.new
monstro = Monstro.new
adaga = Adaga.new

print "\nSaudações, Oh! Grande "
puts "#{heroi}\n"
puts "Estás com o seguinte equipamento:"
puts adaga

while heroi.esta_vivo?
	monstro = Monstro.new
	puts monstro.to_s

	while monstro.esta_vivo? && heroi.esta_vivo?
		heroi.bater(monstro)
		puts "	A energia de #{monstro.nome} é #{monstro.energia}\n" if monstro.esta_vivo?

		if monstro.esta_vivo? 
		monstro.bater(heroi)
		puts "	A energia de #{heroi.nome} é #{heroi.energia}\n"
		puts ''
		end		
	end
end

puts "#{heroi.nome} morreu!!!"
puts "#{heroi.nome} abateu #{heroi.mortes} monstros!"