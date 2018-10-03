

					#hash 1 - atributos basicos
	@estatisticas = [
					{#dps = damage per second / dph = damage per hit }
						forca: estatisticas.forca,
						destreza: estatisticas.destreza,
						inteligencia: estatisticas.inteligencia,
						vigor: estatisticas.vigor,
					}
					#hash 2 - modificadores primarios de combate
					{	
						att_rating: estatisticas.att_rating,
						damage: damage (dano arma * str/10 )
						toughness: toughness
						recovey: recovey
						defesa: estatisticas.defesa
					}
					#hash 3 - modificadores ofensivos
					{
						damage_increased: damage_increased#(%)
						attacks_per_second: attacks_per_second
						attack_speed_increased: attack_speed_increased#(%)
						critical_hit_chance: critical_hit_chance#(%)
						critical_hit_damage: critical_hit_damage#(%)
						area_damage: area_damage#(%)
						cooldown_reduction: cooldown_reduction#(%)
						fire_damage_increased: fire_damage_increased#(%)
						multishot_damage_increased: multishot_damage_increased#(%)
					}

					{
						weapon_damage: weapon_damage
						elemental_dps: elemental_dps
						elite_dps: elite_dps
						dps_per_100_dex: dps_per_100_dex
						dps_per_crit_chance: dps_per_crit_chance
						dps_per_att_speed: dps_per_att_speed
						dps_per_elemental_damage: dps_per_elemental_damage
					}

					{
						damage_multiplier: damage_multiplier#(%)
						effective_dps: effective_dps
						effective_dph: effective_dph
					}

					{#defense
						armor: armor
						block_amount: block_amount
						block_chance: block_chance#(%)
						dodge_chance: dodge_chance#(%)
						physical_resistance: physical_resistance
						cold_resistance: cold_resistance
						fire_resistance: fire_resistance
						lightning_resistance: lightning_resistance
						poison_resistance: poison_resistance
						arcane_resistance: arcane_resistance
					}

					{	
						damage_reduction: damage_reduction
						damage_reduction_per_650_vitality: damage_reduction_per_650_vitality
						damage_reduction_per_15_life: damage_reduction_per_15_life
					=> damage_reduction_per_775_armor: damage_reduction_per_775_armor
					}
					#bonus
					{

					}
						bonus_damage_elite: bonus_damage_elite#(%)
					}