require 'pry'

class Personagem
	attr_accessor :nome, :energia, :ataque, :status
	
	def esta_vivo?	#Classe Personagem
		true if self.energia > 0
	end	
end