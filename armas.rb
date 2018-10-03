require_relative "estatisticas"

require 'pry'

class Armas < Estatisticas
	attr_accessor :dano_min, :dano_max, :dano
	
	def initialize
		self.dano_min = 1
		self.dano_max = 1
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
	
	def modificadores
		mod_1 = self.forca
		mod_2 = self.vigor

		mod_total = mod_1.to_i + mod_2.to_i

		puts mod_total
	end
	
	def dano_total
		puts self.dano
	end

	def to_s
		"\n#{arma}"
	end
end

arma = Armas.new

arma.arma
arma.dano_total
arma.modificadores
binding.pry