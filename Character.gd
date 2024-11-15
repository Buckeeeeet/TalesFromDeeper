class Character extends Entity:
## Base class for all playable characters
##
## Includes stat evolution, current stats, and other needed constants


	# EVOLUTION STATS
	var m_iHpLvl: int
	var m_iAtkLvl: int
	var m_iDefLvl: int
	var m_iResLvl: int
	var m_iSpdLvl: int
	var rng

	# Constructor
	# First pack: super class information
	# Second pack: character information
	func _init(
			_sName: String,
			_iMaxHp: int,
			_iMaxAtk: int,
			_iMaxDef: int,
			_iMaxRes: int,
			_iMaxSpd: int,
			_eAtkType: AtkTypes,
			_eDebuff: Debuffs,
			_iLvl: int,
			_iExp: int,
			
			_iHpLvl: int,
			_iAtkLvl: int,
			_iDefLvl: int, 
			_iResLvl: int, 
			_iSpdLvl: int
	):
		self.m_iHpLvl = _iHpLvl
		self.m_iAtkLvl = _iAtkLvl
		self.m_iDefLvl = _iDefLvl
		self.m_iResLvl = _iResLvl
		self.m_iSpdLvl = _iSpdLvl
		
		self.rng = RandomNumberGenerator.new()
		
		super(_sName, _iMaxHp, _iMaxAtk, _iMaxDef, _iMaxRes, _iMaxSpd, _eAtkType, _eDebuff, _iLvl, _iExp)


	# Level up method and stat raising
	func level_up() -> void:
		
		# Raising the character's level
		self.m_iLvl += 1
		
		# Generating the values
		var fRandomHp = rng.randi_range(1, 30)
		var fRandomAtk = rng.randi_range(1, 10)
		var fRandomDef = rng.randi_range(1, 10)
		var fRandomRes = rng.randi_range(1, 10)
		var fRandomSpd = rng.randi_range(1, 10)
		
		# Upgrading the stats depending on the random values
		self.m_iMaxHp += ceil( fRandomHp/(10-self.m_iHpLvl) ) # Different method for higher raise
		self.m_iMaxAtk += floor( fRandomAtk/(10-self.m_iAtkLvl) )
		self.m_iMaxDef += floor( fRandomDef/(10-self.m_iDefLvl) )
		self.m_iMaxRes += floor( fRandomRes/(10-self.m_iResLvl) )
		self.m_iMaxSpd += floor( fRandomSpd/(10-self.m_iSpdLvl) )
		
