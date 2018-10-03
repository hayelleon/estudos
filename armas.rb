require_relative "estatisticas"

require 'pry'

class Armas < Estatisticas
	attr_accessor :dano_min, :dano_max, :dano
	
	def initialize
		self.dano_min = rand(1...7)
		self.dano_max = rand(7...14)
		self.dano = (self.dano_min + self.dano_max) / 2
	end

	def arma
		lista_armas = ["Faca", "Adaga", "Punhal", "Espada", "Machado", "Alabarda", "Maça",
						"Espada Bastarda", "Cajado", "Lança"]
		indice_armas = lista_armas.length
		arma_rand = rand(indice_armas)
		arma = lista_armas[arma_rand]

		puts arma
	end

	def dano_total
		puts self.dano
	end

	def modificadores

	end

	def to_s
		"\n#{arma}"
	end
end

arma = Armas.new

arma.arma
arma.dano_total
arma.modificadores
# binding.pry