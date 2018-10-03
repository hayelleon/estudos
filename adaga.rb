require_relative "armas"

require 'pry'

class Adaga < Armas
	attr_reader :dano_min, :dano_max
	attr_accessor :dano

	def initialize
		self.dano_min = Random.rand(1...3)
		self.dano_max = Random.rand(3...5)
		self.dano = 0
	end	

	def dano
		self.dano = (self.dano_min + self.dano_max) / 2		
 	end
 	
 	def to_s
 		"\nAdaga\nDano minimo - #{self.dano_min}\nDano máximo - #{self.dano_max}\nDano neste combate - #{self.dano}\n\n"
 	end
end

