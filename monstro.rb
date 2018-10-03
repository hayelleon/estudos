require_relative "personagem"

require 'pry'


class Monstro < Personagem
	attr_accessor :energia, :ataque, :status, :nome_monstro	#Classe Personagem
	
	def initialize
		self.energia = Random.rand(10) + 10
		self.status = true
		self.nome = nome_monstro
	end
	
	def nome_monstro
		lista_monstros = ["Fishman", "Gigante", "Orc", "Goblin", "Hidra Mitologica", "Esqueleto",
						  "Balrog", "Uruk-hai", "Troll", "Caveira Vermelha", "Arnim Zola", "Venom",
						  "Abutre", "Apocalipse", "Groxo"]
		indice_monstros = lista_monstros.length
		monstro_rand = rand(indice_monstros)
		@monstro = lista_monstros[monstro_rand]
	end

	def bater(alvo)
		if alvo.esta_vivo?
			self.ataque = Random.rand(5)
			alvo.energia -= self.ataque
		else
			puts "Você está morto!\n"
		end
	end	

	def to_s
		"#{self.nome} - Ataque: #{self.ataque} / Energia: #{self.energia} / #{self.status}\n"
	end

	def true
		"Vivo"
	end
end