class_name Entity
extends Node


# DEFINITIONS
# Used in character methods

# Defines the attack scope of a character
enum AtkTypes {
	PHYSICAL,
	MAGICAL,
}

# Defines the debuffs that a character can deal
enum Debuffs {
	BURN,
	BLEED,
	SLOW,
	POISON,
	DEF_DROP,
	CONFUSION,
	TAUNT,
	HEAL_BLOCK,
}

# COMBAT STATS
# Max stats
var m_sName: String
var m_iMaxHp: int = 20
var m_iMaxAtk: int = 5
var m_iMaxDef: int = 5
var m_iMaxRes: int = 5
var m_iMaxSpd: int = 5
var m_eAtkType: AtkTypes # Defines on which scope the entity attacks
var m_eDebuff: Debuffs # Defines the debuff the entity has affinity with
var m_iLvl: int = 1
var m_iExp: int = 0 # Defines how much Exp the entity has (enemy: gives when killed)
# Current stats
var m_iHp: int = self.m_iMaxHp
var m_iAtk: int = self.m_iMaxAtk
var m_iDef: int = self.m_iMaxdef
var m_iRes: int = self.m_iMaxRes
var m_iSpd: int = self.m_iMaxSpd


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
		_iExp: int
):
	self.m_sName = _sName
	self.m_iMaxHp = _iMaxHp
	self.m_iMaxDef = _iMaxDef
	self.m_iMaxRes = _iMaxRes
	self.m_iMaxSpd = _iMaxSpd
	self.m_eAtkType = _eAtkType
	self.m_eDebuff = _eDebuff
	self.m_iLvl = _iLvl
	self.m_iExp = _iExp
	
	self.m_iHp = self.m_iMaxHp
	self.m_iAtk = self.m_iMaxAtk
	self.m_iDef = self.m_iMaxdef
	self.m_iRes = self.m_iMaxRes
	self.m_iSpd = self.m_iMaxSpd
