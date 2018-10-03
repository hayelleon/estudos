require_relative "personagem"

require 'pry'

class Heroi < Personagem
	attr_accessor :energia, :ataque, :status, :mortes, :nome #Classe Personagem

	def initialize
		self.energia = 30
		self.status = true
		self.mortes = 0
	end

	def nome_heroi 
		lista_herois = ["Odin", "Thor", "Loki", "Frea", "Wolverine", "Hulk", "Vespa", "Homem-Aranha",
						"Colossus", "Kitty Pride", "Hércules", "Sherlock Holmes"]
		indice_herois = lista_herois.length
		heroi_rand = rand(indice_herois)
		@heroi = lista_herois[heroi_rand]
	end

	def bater(alvo)
		nome_heroi = @heroi
		if alvo.esta_vivo?
			self.ataque = (Random.rand(5) + 3)
			self.nome = nome_heroi
			puts "\n 	O dano de #{nome_heroi} foi: #{self.ataque}\n"
			alvo.energia -= self.ataque
		else
			puts " 	O monstro está morto!"
		end

		unless alvo.esta_vivo?
			puts " 	O monstro está morto!\n\n"
			self.mortes += 1
		end
	end

 	def esta_vivo?
		true if self.energia > 0
	end

	def to_s
		"#{nome_heroi}
		Energia: #{self.energia} / Ataque: #{self.ataque}
		Mortes: #{self.mortes} - Status: #{self.status}\n"
	end
end