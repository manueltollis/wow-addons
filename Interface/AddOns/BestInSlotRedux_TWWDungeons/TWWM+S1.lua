local Dungeons = LibStub('AceAddon-3.0'):GetAddon('BestInSlotRedux'):NewModule('TheWarWithinDungeons')
local dungeonTierId = 110002
local tocVersion = select(1, GetBuildInfo())
local bonusIds_Cata = {--TWW1
	bonusids = {
		[1] = {10056,10334,9639,6646},
		[2] = {10067,10338,9639,6646},--M+ Casino
	},
	difficultyconversion = {
		[1] = 35, -- Mythic+
		[2] = 8, -- Great Vault
	},
}
local bonusIds_MoP = {
	bonusids = {
		[1] = {3305,8270,7359,6646},
		[2] = {3311,7977,6646},--M+ Casino
	},
	difficultyconversion = {
		[1] = 35, -- Mythic+
		[2] = 8, -- Great Vault
	},
}
local bonusIds_WoD = {--DFS3
	bonusids = {
		[1] = {9882,9581,9639,6646},
		[2] = {9888,9576,9639,6646},--M+ Casino
	},
	difficultyconversion = {
		[1] = 35, -- Mythic+
		[2] = 8, -- Great Vault
	},
}
local bonusIds_Legion = {--DFS3
	bonusids = {
		[1] = {9876,9581,9639,6646},
		[2] = {9882,9576,9639,6646},--M+ Casino
	},
	difficultyconversion = {
		[1] = 35, -- Mythic+
		[2] = 8, -- Great Vault/
	},
}
local bonusIds_BfA = {--TWW1
	bonusids = {
		[1] = {10034,10334,9639,6646},
		[2] = {10047,10338,9639,6646},--M+ Casino
	},
	difficultyconversion = {
		[1] = 35, -- Mythic+
		[2] = 8, -- Great Vault
	},
}
local bonusIds_SL = {--TWW1
	bonusids = {
		[1] = {9935,10334,9639,6646},
		[2] = {9948,10338,9639,6646},--M+ Great Vault
	},
	difficultyconversion = {
		[1] = 35, -- Mythic+
		[2] = 8, -- Great Vault
	},
}
local bonusIds_DF = {--DFS4
	bonusids = {
		[1] = {3201,10334,9639,6646},
		[2] = {3207,10338,9639,6646},--M+ Great Vault
	},
	difficultyconversion = {
		[1] = 35, -- Mythic+
		[2] = 8, -- Great Vault
	},
}
local bonusIds_DF_MegaDA = {--DFS3
	bonusids = {
		[1] = {1605,9581,9639,6646},
		[2] = {1611,9576,9639,6646},--M+ Casino
	},
	difficultyconversion = {
		[1] = 35, -- Mythic+
		[2] = 8, -- Great Vault
	},
}
local bonusIds_DF_MegaDB = {--DFS3
	bonusids = {
		[1] = {1576,9581,9639,6646},
		[2] = {1582,9576,9639,6646},--M+ Casino
	},
	difficultyconversion = {
		[1] = 35, -- Mythic+
		[2] = 8, -- Great Vault
	},
}
local bonusIds_DF_MegaDC = {--DFS3
	bonusids = {
		[1] = {5946,9581,9639,6646},
		[2] = {5952,9576,9639,6646},--M+ Casino
	},
	difficultyconversion = {
		[1] = 35, -- Mythic+
		[2] = 8, -- Great Vault
	},
}
local bonusIds_DF_MegaDD = {--DFS3
	bonusids = {
		[1] = {1570,9581,9639,6646},
		[2] = {1576,9576,9639,6646},--M+ Casino
	},
	difficultyconversion = {
		[1] = 35, -- Mythic+
		[2] = 8, -- Great Vault
	},
}
local bonusIds_DF_MegaDE = {--DFS3
	bonusids = {
		[1] = {5926,9581,9639,6646},
		[2] = {5932,9576,9639,6646},--M+ Casino
	},
	difficultyconversion = {
		[1] = 35, -- Mythic+
		[2] = 8, -- Great Vault
	},
}
local bonusIds_DF_MegaDF = {--DFS3
	bonusids = {
		[1] = {1534,9581,9639,6646},
		[2] = {1540,9576,9639,6646},--M+ Casino
	},
	difficultyconversion = {
		[1] = 35, -- Mythic+
		[2] = 8, -- Great Vault
	},
}
local bonusIds_DF_MegaDG = {--DFS3
	bonusids = {
		[1] = {5891,9581,9639,6646},
		[2] = {5897,9576,9639,6646},--M+ Casino
	},
	difficultyconversion = {
		[1] = 35, -- Mythic+
		[2] = 8, -- Great Vault
	},
}
local bonusIds_TWW = {--TWW1
	bonusids = {
		[1] = {6034,10334,9639,6646},
		[2] = {6047,10338,9639,6646},--M+ Great Vault
	},
	difficultyconversion = {
		[1] = 35, -- Mythic+
		[2] = 8, -- Great Vault
	},
}

--------------------------------------------------
----- Necrotic Wake
--------------------------------------------------
function Dungeons:NecroticWake()
	local necroticwake = "necroticwake"
	local name = C_Map.GetMapInfo(1666).name
	self:RegisterRaidInstance(dungeonTierId, necroticwake, name, bonusIds_SL)


	-----------------------------------
	----- Blightbone
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2395)
	local lootTable = {
	178730, --Engorged Worm Smashwer
	178735, --Blight Belcher
	178732, --Abominable Visage
	178733, --Blightbone Spaulders
	178734, --Fused Bone Greatbelt
	178731, --Vicera-Stitched Footpads
	178736, --Stitchflesh's Misplaced Signet
	}
	self:RegisterBossLoot(necroticwake, lootTable, bossName)


	-----------------------------------
	----- Amarth, The Harvester
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2391)
	local lootTable = {
	178737, --Amarth's Spellblade
	178738, --Rattling Deadeye Hood
	178740, --Reanimator's Mantle
	178741, --Risen Monstrosity Cuffs
	178739, --Legplates of Unholy Frenzy
	178742, --Bottled Flayedwing Toxin
	}
	self:RegisterBossLoot(necroticwake, lootTable, bossName)


	-----------------------------------
	----- Surgeon Stitchflesh
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2392)
	local lootTable = {
	178743, --Stitchflesh's Scalpel
	178750, --Encrusted Canopic Lid
	178749, --Vile Butcher's Pauldrons
	178744, --Freshly Embalmed Jerkin
	178748, --Gory Surgeon's Gloves
	178745, --Striders of Restless Malice
	178772, --Satchel of Misbegotten Minions
	178751, --Spare Meat Hook
	}
	self:RegisterBossLoot(necroticwake, lootTable, bossName)


	-----------------------------------
	----- Nalthor the Rimebinder
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2396)
	local lootTable = {
	178780, --Rimebinder's Runeblade
	178777, --Darkfrost Helmet
	178779, --Undying Chill Shoulderpads
	178782, --Necroplis Lord's Shackles
	178778, --Lichbone Legguards
	178781, --Ritual Commander's Ring
	178783, --Siphoning Phylactery Shard
	}
	self:RegisterBossLoot(necroticwake, lootTable, bossName)
end

--------------------------------------------------
----- Mists of Tirna Scithe
--------------------------------------------------
function Dungeons:MistsofTirnaScithe()
	local mistsoftirnascithe = "mistsoftirnascithe"
	local name = C_Map.GetMapInfo(1669).name
	self:RegisterRaidInstance(dungeonTierId, mistsoftirnascithe, name, bonusIds_SL)


	-----------------------------------
	----- Ingra Maloch
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2400)
	local lootTable = {
	178713, --Drustlord's Greateaxe
	178709, --Scithewood Scepter
	178692, --Soulthorn Visage
	178694, --Wrathbark Greathelm
	178696, --Ingra Maloch's Mantle
	178698, --Rainshadow Hauberk
	178704, --Deathshackle Wristwraps
	178700, --Clasp of Waning Shadow
	178708, --Unbound Changeling
	}
	self:RegisterBossLoot(mistsoftirnascithe, lootTable, bossName)


	-----------------------------------
	----- Mistcaller
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2402)
	local lootTable = {
	178710, --Tanglewood Thorn
	178691, --Hood of the Hidden Path
	178707, --Trailspinner Pendant
	178697, --Prankster's Pauldrons
	178695, --Wintersnap Shoulderguards
	178706, --Fogweaver Gauntlets
	178705, --Tricksprite Gloves
	178715, --Mistcaller Ocarina
	}
	self:RegisterBossLoot(mistsoftirnascithe, lootTable, bossName)


	-----------------------------------
	----- Tred'ova
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2405)
	local lootTable = {
		178714, --Lakali's Spire of Knowledge
		178711, --Axe of the Deadgrove
		178712, --Acidslough Bulwark
		178693, --Cocoonsilk Cowl
		178702, --Bands of the Undergrowth
		178703, --Hiveswarm Bracers
		178699, --Sapgorger Belth
		178701, --Gormshell Greaves
	}
	self:RegisterBossLoot(mistsoftirnascithe, lootTable, bossName)
end

--------------------------------------------------
----- Siege of Boralus
--------------------------------------------------
function Dungeons:SiegeOfBoralus()
	local siegeOfBoralus = 'siegeOfBoralus'
	local name = C_Map.GetMapInfo(1162).name
	self:RegisterRaidInstance(dungeonTierId, siegeOfBoralus, name, bonusIds_BfA)


	--------------------------------------------------
	----- Chopper Redhook
	--------------------------------------------------
	if UnitFactionGroup('player') == 'Alliance' then
		local bossName = EJ_GetEncounterInfo(2132)
		local lootTable = {
			159972, --Mutineer's Fate
			159965, --Redhook's Cummerbund
			159969, --Powdershot Leggings
			159973, --Boarder's Billy Club
			162541, --Band of the Roving Scalawag
			159427, --Legplates of the Irontide Raider
			159251, --Top-Sail Footwraps
			159968, --Gloves of the Iron Reavers
		}
		self:RegisterBossLoot(siegeOfBoralus, lootTable, bossName)
	else
		local bossName = EJ_GetEncounterInfo(2133)
		local lootTable = {
			159411, --Legplates of the Maritime Guard
			159245, --Cord of the Pious Warder
			159278, --Slippers of Unwavering Faith
			159328, --Wharf Warden's Gloves
			159367, --Unstoppable Zealot's Legplates
			159648, --Bainbridge's Blackjack
			162542, --Seal of the City Watch
			159647, --Siegebreaker's Halberd
		}
		self:RegisterBossLoot(siegeOfBoralus, lootTable, bossName)
	end


	--------------------------------------------------
	----- Dread Captain Lockwood
	--------------------------------------------------
	local bossName = EJ_GetEncounterInfo(2173)
	local lootTable = {
		159309, --Port Pillager's Belt
		159379, --Sure-Foot Sabatons
		159623, --Dead-Eye Spyglass
		159237, --Captain's Dustfinders
		159429, --Rope-Scored Gauntlets
		159434, --Cannoneer's Toolbelt
		159372, --Dread Captain's Irons
		159250, --Powder Monkey's Leggings
		159320, --Besieger's Deckstalkers
		159649, --Saber of Dread Pirate Lockwood
	}
	self:RegisterBossLoot(siegeOfBoralus, lootTable, bossName)


	--------------------------------------------------
	----- Hadal Darkfathom
	--------------------------------------------------
	local bossName = EJ_GetEncounterInfo(2134)
	local lootTable = {
		159386, --Anchor Chain Girdle
		159428, --Ballast Sinkers
		159650, --Dismembered Submersible Claw
		159322, --Seawalker's Pantaloons
		159461, --Band of the Ancient Dredger
		159622, --Hadal's Nautilus
	}
	self:RegisterBossLoot(siegeOfBoralus, lootTable, bossName)


	--------------------------------------------------
	----- Viq'Goth
	--------------------------------------------------
	local bossName = EJ_GetEncounterInfo(2140)
	local lootTable = {
		159310, --Circlet of the Enveloping Leviathan
		159362, --Tri-Heart Chestguard
		159651, --Coral-Edged Crescent
		159376, --Hook-Barbed Spaulders
		159431, --Kraken Shell Pauldrons
		159252, --Grasping Crown of the Deep
		159416, --Harpooner's Plate Cuirass
		159256, --Iron-Kelp Wristwraps
		159314, --Cephalohide Jacket
	}
	self:RegisterBossLoot(siegeOfBoralus, lootTable, bossName)
end

--------------------------------------------------
----- Grim Batol
--------------------------------------------------
function Dungeons: GrimBatol()
	local grimbatol = "grimbatol"
	local name = C_Map.GetMapInfo(293).name
	self:RegisterRaidInstance(dungeonTierId, grimbatol, name, bonusIds_Cata)
	-----------------------------------
	----- General Umbriss
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2617)
	local lootTable = {
		133283, --Modgud's Blade
		133285, --Wildhammer Riding Helm
		133284, --Cursed Skardyn Vest
		133306, --Bracers of Umbral Mending
		133286, --Umbriss Band
		133282, --Skardyn's Grace
	}
	self:RegisterBossLoot(grimbatol, lootTable, bossName)


	-----------------------------------
	----- Forgemaster Throngus
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2627)
	local lootTable = {
		133288, --Wand of Untainted Power
		133289, --Belt of the Forgemaster
		133353, --Troggbone Cinch
		133308, --Curse-Tainted Leggings
		133290, --Dark Iron Chain Boots
		133287, --Ring of Dun Algaz
		133304, --Gale of Shadows
		133291, --Throngus's Finger
	}
	self:RegisterBossLoot(grimbatol, lootTable, bossName)


	-----------------------------------
	----- Drahga Shadowburner
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2618)
	local lootTable = {
		133296, --Windwalker Blade
		133294, --Earthshape Pauldrons
		133292, --Azureborne Cloak
		133363, --Troggstitched Drape
		133295, --Crimsonborne Bracers
		133354, --Glimmerthread Pantaloons
		133293, --Red Scale Boots
	}
	self:RegisterBossLoot(grimbatol, lootTable, bossName)


	-----------------------------------
	----- Erudax, the Duke of Below
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2619)
	local lootTable = {
		133303, --Staff of Siphoned Essences
		133298, --Wild Hammer
		133301, --Mace of Transformed Bone
		133302, --Crown of Enfeebled Bodies
		133374, --Courier's Dragonriding Spaulders
		133309, --Shroud of Dark Memories
		133297, --Vest of Misshapen Hides
		133299, --Circle of Bone
		133305, --Corrupted Egg Shell
		133300, --Mark of Khardros
	}
	self:RegisterBossLoot(grimbatol, lootTable, bossName)


end

--------------------------------------------------
----- Ara-Kara, City of Echoes
--------------------------------------------------
function Dungeons: AraKara()
	local arakara = "arakara"
	local name = C_Map.GetMapInfo(2357).name
	self:RegisterRaidInstance(dungeonTierId, arakara, name, bonusIds_TWW)
	-----------------------------------
	----- Avanoxx
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2583)
	local lootTable = {
		221150, --Arachnoid Soulcleaver
		221151, --Devourer's Gauntlets
		221153, --Gauzewoven Legguards
		221152, --Silksteel Striders
		219314, --Ara-Kara Sacbrood
	}
	self:RegisterBossLoot(arakara, lootTable, bossName)


	-----------------------------------
	----- Anub'zekt
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2584)
	local lootTable = {
		221156, --Cryptbound Headpiece
		221155, --Swarm Monarch's Spaulders
		221154, --Swarmcaller's Shroud
		221157, --Unbreakable Beetlebane Bindings
		221158, --Burrower's Cinch
		219316, --Ceaseless Swarmgland
	}
	self:RegisterBossLoot(arakara, lootTable, bossName)


	-----------------------------------
	----- Ki'katal the Harvester
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2585)
	local lootTable = {
		221159, --Harvester's Interdiction
		221160, --Blight Hunter's Scalpelglaive
		221165, --Unceremonious Bloodletter
		221163, --Whispering Mask
		221161, --Experimental Goresilk Chestguard
		221162, --Claws of Tainted Ichor
		221164, --Archaic Venomancer's Footwraps
		219317, --Harvester's Edict
	}
	self:RegisterBossLoot(arakara, lootTable, bossName)


end

--------------------------------------------------
----- City of Threads
--------------------------------------------------
function Dungeons: CityOfThreads()
	local cityofthreads = "cityofthreads"
	local name = C_Map.GetMapInfo(2343).name
	self:RegisterRaidInstance(dungeonTierId, cityofthreads, name, bonusIds_TWW)
	-----------------------------------
	----- Orator Krix'vizk
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2594)
	local lootTable = {
		221166, --Krix'vizk's Speech Rod
		221167, --Vociferous Subjugator's Bracers
		221170, --Subduer's Terrorgrips
		221168, --Cinch of Lingering Influence
		221169, --Whisperer's Echoing Steps
		219318, --Oppressive Orator's Larynx
	}
	self:RegisterBossLoot(cityofthreads, lootTable, bossName)


	-----------------------------------
	----- Fangs of the Queen
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2595)
	local lootTable = {
		221171, --Kingslayer's Frostfang
		221172, --Pail of Preserved Obscurity
		221175, --Shadowchill Amice
		221176, --Arachnofrost Vest
		221174, --Penumbral Rimeguards
		221173, --Legplates of Duality
		219319, --Twin Fang Instruments
	}
	self:RegisterBossLoot(cityofthreads, lootTable, bossName)


	-----------------------------------
	----- The Coaglamation
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2600)
	local lootTable = {
		221177, --Old-Blood Hielaman
		221181, --Elder's Hemolymphal Periapt
		221179, --Coagulum Cuirass
		221182, --Vitriolic Veinwoven Wraps
		221180, --Gorebound Stranglers
		221178, --Ichor-Stained Sollerets
		219320, --Viscous Coaglam
	}
	self:RegisterBossLoot(cityofthreads, lootTable, bossName)


	-----------------------------------
	----- Izo, the Grand Splicer
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2596)
	local lootTable = {
		221184, --Surgical Heartstopper
		221183, --Splice 'n Dice
		221187, --Intertwiner's Shadowcowl
		221185, --Flesh Connector's Epaulets
		221188, --Viscera-Lathered Coat
		221186, --Entwined Chimeric Legguards
		221189, --Experiment 08752's Band
		219321, --Cirral Concoctory
	}
	self:RegisterBossLoot(cityofthreads, lootTable, bossName)


end

--------------------------------------------------
----- The Dawnbreaker
--------------------------------------------------
function Dungeons: TheDawnbreaker()
	local thedawnbreaker = "thedawnbreaker"
	local name = C_Map.GetMapInfo(2359).name
	self:RegisterRaidInstance(dungeonTierId, thedawnbreaker, name, bonusIds_TWW)
	-----------------------------------
	----- Speaker Shadowcrown
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2580)
	local lootTable = {
		221132, --Overflowing Umbral Pail
		221135, --Fanatic's Blackened Shoulderwraps
		221134, --Shadow Congregant's Belt
		221133, --Girdle of Somber Ploys
		221136, --Devout Zealot's Ring
		219311, --Void Pactstone
	}
	self:RegisterBossLoot(thedawnbreaker, lootTable, bossName)


	-----------------------------------
	----- Anub'ikkaj
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2581)
	local lootTable = {
		221137, --Black Shepherd's Guisarme
		221138, --Parson's Ornamented Blade
		221140, --Shadowblight Mantle
		221139, --Dark Priest's Carapace
		221142, --Scheming Assailer's Bands
		221202, --Defiance Crusher's Sabatons
		221141, --High Nerubian Signet
		219312, --Empowering Crystal of Anub'ikkaj
	}
	self:RegisterBossLoot(thedawnbreaker, lootTable, bossName)


	-----------------------------------
	----- Rasha'nan
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2593)
	local lootTable = {
		221145, --Shipwrecker's Bludgeon
		221144, --Zephyrous Sail Carver
		221143, --Recurved Hull Impaler
		221146, --Soaring Behemoth's Greathelm
		221148, --Epaulets of the Clipped Wings
		221147, --Goliath's Chitinous Chainmail
		221149, --Membranous Slippers
		219313, --Mereldar's Toll
	}
	self:RegisterBossLoot(thedawnbreaker, lootTable, bossName)


end

--------------------------------------------------
----- The Stonevault
--------------------------------------------------
function Dungeons: TheStonevault()
	local thestonevault = "thestonevault"
	local name = C_Map.GetMapInfo(2341).name
	self:RegisterRaidInstance(dungeonTierId, thestonevault, name, bonusIds_TWW)
	-----------------------------------
	----- E.D.N.A.
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2572)
	local lootTable = {
		221078, --Endoskeletal Polecrank
		221074, --Augmented Refractor Cannon
		221073, --Earthen Nullification Aegis
		221077, --"Emergency Stop" Keychain
		221075, --Reinforced Anti-Intruder Chainmail
		221076, --E.D.N.A. Stabilizers
		219315, --Refracting Aggression Module
	}
	self:RegisterBossLoot(thestonevault, lootTable, bossName)


	-----------------------------------
	----- Skarmorak
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2579)
	local lootTable = {
		221083, --Wardbreaker of the Fractured
		221084, --Skardyn Mercybringer
		221081, --Guise of the Construct
		221080, --Corpseleecher Grips
		221079, --Crystal-Fissure Girdle
		221082, --Tainted Earthshard Walkers
		219300, --Skarmorak Shard
	}
	self:RegisterBossLoot(thestonevault, lootTable, bossName)


	-----------------------------------
	----- Master Machinists
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2590)
	local lootTable = {
		221085, --Melodious Iron Songspire
		221088, --Anvilhide Cape
		221086, --Machinist's Searing Handguards
		221087, --Dorlita's Safety Belt
		219301, --Overclocked Gear-a-Rang Launcher
		219302, --Scrapsinger's Symphony
	}
	self:RegisterBossLoot(thestonevault, lootTable, bossName)


	-----------------------------------
	----- Void Speaker Eirich
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2582)
	local lootTable = {
		226683, --Malfunctioning Mechsuit
		221090, --Eirich's Fist of Deception
		221091, --Cutting-Edge Sermon
		221089, --Silver-Tongued Boltcaster
		221094, --Whispering Umbral Mantle
		221095, --Shadowed Orator's Tunic
		221092, --Legplates of Broken Trust
		219303, --High Speaker's Accretion
	}
	self:RegisterBossLoot(thestonevault, lootTable, bossName)


end









function Dungeons:InitializeZoneDetect(ZoneDetect)
----------------------------------------------------------------------------------------------------------
	local necroticwake = "necroticwake"
	ZoneDetect:RegisterMapID(1666, necroticwake)
	ZoneDetect:RegisterNPCID(166880, necroticwake, 1)
	ZoneDetect:RegisterNPCID(163157, necroticwake, 2)
	ZoneDetect:RegisterNPCID(166882, necroticwake, 3)
	ZoneDetect:RegisterNPCID(166945, necroticwake, 4)

	local mistsoftirnascithe = "mistsoftirnascithe"
	ZoneDetect:RegisterMapID(1669, mistsoftirnascithe)
	ZoneDetect:RegisterNPCID(164567, mistsoftirnascithe, 1)
	ZoneDetect:RegisterNPCID(170217, mistsoftirnascithe, 2)
	ZoneDetect:RegisterNPCID(164517, mistsoftirnascithe, 3)

	local siegeOfBoralus = 'siegeOfBoralus'
	ZoneDetect:RegisterMapID(1162, siegeOfBoralus)
	ZoneDetect:RegisterNPCID(128650, siegeOfBoralus, 1) --Chopper Redhook [A]
	ZoneDetect:RegisterNPCID(130834, siegeOfBoralus, 1) --Sergeant Bainbridge [H]
	ZoneDetect:RegisterNPCID(129208, siegeOfBoralus, 2) --Dread Captain Lockwood
	ZoneDetect:RegisterNPCID(130836, siegeOfBoralus, 3) --Hadal Darkfathom
	ZoneDetect:RegisterNPCID(120553, siegeOfBoralus, 4) --Viq'Goth

	local grimbatol = "grimbatol"
	ZoneDetect:RegisterMapID(293, grimbatol)
	ZoneDetect:RegisterNPCID(39625, grimbatol, 1)
	ZoneDetect:RegisterNPCID(40177, grimbatol, 2)
	ZoneDetect:RegisterNPCID(40319, grimbatol, 3)
	ZoneDetect:RegisterNPCID(40484, grimbatol, 4)

	local arakara = "arakara"
	ZoneDetect:RegisterMapID(2357, arakara)
	ZoneDetect:RegisterNPCID(213179, arakara, 1)
	ZoneDetect:RegisterNPCID(215405, arakara, 2)
	ZoneDetect:RegisterNPCID(215407, arakara, 3)

	local cityofthreads = "cityofthreads"
	ZoneDetect:RegisterMapID(2343, cityofthreads)
	ZoneDetect:RegisterNPCID(216619, cityofthreads, 1)
	ZoneDetect:RegisterNPCID(216648, cityofthreads, 2) -- Nx
	ZoneDetect:RegisterNPCID(216649, cityofthreads, 2) -- Vx
	ZoneDetect:RegisterNPCID(216320, cityofthreads, 3)
	ZoneDetect:RegisterNPCID(216658, cityofthreads, 4)

	local thedawnbreaker = "thedawnbreaker"
	ZoneDetect:RegisterMapID(2359, thedawnbreaker)
	ZoneDetect:RegisterNPCID(211087, thedawnbreaker, 1)
	ZoneDetect:RegisterNPCID(211089, thedawnbreaker, 2)
	ZoneDetect:RegisterNPCID(224552, thedawnbreaker, 3)

	local thestonevault = "thestonevault"
	ZoneDetect:RegisterMapID(2341, thestonevault)
	ZoneDetect:RegisterNPCID(210108, thestonevault, 1)
	ZoneDetect:RegisterNPCID(210156, thestonevault, 2)
	ZoneDetect:RegisterNPCID(213216, thestonevault, 3)
	ZoneDetect:RegisterNPCID(219440, thestonevault, 4) -- High Speaker Eirich

end

function Dungeons:OnEnable()
	self:RegisterExpansion("Myhtic+", "Myhtic+")
	self:RegisterRaidTier("Myhtic+", dungeonTierId, ("%s %s"):format("Myhtic+ ", "TWW Season 1"), PLAYER_DIFFICULTY6.."+ Hero 6/6 ",  PLAYER_DIFFICULTY6.."+ Vault Myth 6/6")

	self:NecroticWake()
	self:MistsofTirnaScithe()
	self:SiegeOfBoralus()
	self:GrimBatol()
	self:AraKara()
	self:CityOfThreads()
	self:TheDawnbreaker()
	self:TheStonevault()
end