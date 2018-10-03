class Armas
attr_accessor :dano_min, :dano_max, :dano
	
	def initialize
		self.dano_min = 0
		self.dano_max = 0
		self.dano = 0
	end

	def arma
		lista_armas = %w{Faca Adaga Punhal Espada Machado Alabarda }
		indice_armas = lista_armas.length
		arma_rand = rand(indice_armas)
		arma = lista_armas[arma_rand]
	end
	
	def dano
		self.arma = arma
	end

	def to_s
		"\n#{arma}"
	end
end

arma = Armas.new

puts arma
