Config = {}

Config.Locale = 'it'

Config.onlinecops = 2

Config.Delays = {
	MethProcessing = 1000 * 10,
	Pickups = 1000 * 10,
}

Config.GiveBlack = true -- give black money? if disabled it'll give regular cash.
Config.Drugs = {
	superMeth = {
		limit = 20
	}



}
Config.Dealers = {
	SuperMethDealer = {
		coords = vector3(56.98, 3690.52, 39.92), 
		item = 'supermeth',
		price = 8000,
	},
	
	HeroineDealer = {
		coords = vector3(11.06, 3734.34, 39.99), 
		item = 'heroine',
		price = 5000,
	},
	
	SpeedballDealer = {
		coords = vector3(95.26, 3750.34, 40.72), 
		item = 'speedball',
		price = 8500,
	},
	
	CocaEthyleneDealer = {
		coords = vector3(97.88, 3682.89, 39.73), 
		item = 'cocaethylene',
		price = 4000,
	},
	
	BrownBrownDealer = {
		coords = vector3(28.95, 3665.86, 40.44), 
		item = 'brownbrown',
		price = 6000,
	}
}

Config.Processes = {
	SuperMethProcessing = {

		coords = vector3(1005.75, -3200.32, -38.99), 
		item1 = 'meth', item2 = 'ephedrine',
		item3 = { 
			name = 'supermeth',
			limit = 20,
		},
		hint = 'Premi ~INPUT_CONTEXT~ per aggiungere ~b~Efedrina~s~ alla ~b~Metanfetamina~s~',
	},
	
	HeroineProcessing = {
		coords = vector3(1011.33, -3196.66, -38.99), 
		item1 = 'morphine', item2 = 'anhydride', 
		item3 = { 
			name = 'heroine',
			limit = 20,
		},
		hint = 'Premi ~INPUT_CONTEXT~ per far reagire ~o~Morfina~s~ e ~o~Anidride Acetica~s~',
	},
	
	SpeedballProcessing = {
		coords = vector3(1101.89, -3194.1, -38.99), 
		item1 = 'cocaine', item2 = 'heroine', 
		item3 = { 
			name = 'speedball',
			limit = 20,
		},
		hint = 'Premi ~INPUT_CONTEXT~ per miscelare ~p~Cocaina~s~ ed ~p~Eroina~s~',
	},
	
	BrownBrownProcessing = {
		coords = vector3(1094.34, -3194.83, -38.99), 
		item1 = 'cocaine', item2 = 'gunpowder',
		item3 = { 
			name = 'brownbrown',
			limit = 20,
		},
		hint = 'Premi ~INPUT_CONTEXT~ per miscelare ~p~Cocaina~s~ e ~p~Polvere da Sparo~s~',
	},
	
	CocaEthyleneProcessing = {
		coords = vector3(1087.21, -3197.48, -38.99), 
		item1 = 'cocaine', item2 = 'vodka',
		item3 = { 
			name = 'cocaethylene',
			limit = 20,
		},
		hint = 'Premi ~INPUT_CONTEXT~ per miscelare ~p~Cocaina~s~ e ~p~Vodka~s~',
	},
}

Config.PublicMarkers = {

	EnterLab = {
		Pos   = { x = 202.18, y = 2461.08, z = 54.7 },
		Size  = {x = 2.5, y = 2.5, z = 0.5},
		Color = {r = 204, g = 204, b = 0},
		Marker= 1,
		Type  = "teleport",
		Hint  = "Premi ~INPUT_CONTEXT~ per entrare",
		Teleport = { x = 998.04, y = -3200.76, z = -37.39 }
	},

	ExitLab = {
		Pos   = { x = 998.04, y = -3200.76, z = -37.39 },
		Size  = {x = 2.5, y = 2.5, z = 0.5},
		Color = {r = 204, g = 204, b = 0},
		Marker= 1,
		Type  = "teleport",
		Hint  = "Premi ~INPUT_CONTEXT~ per uscire",
		Teleport = { x = 202.18, y = 2461.08, z = 54.7 },
	},
	
	EnterCoke = {
		Pos   = { x = -253.71, y = -2591.16, z = 5.0 },
		Size  = {x = 2.5, y = 2.5, z = 0.5},
		Color = {r = 204, g = 204, b = 0},
		Marker= 1,
		Type  = "teleport",
		Hint  = "Premi ~INPUT_CONTEXT~ per entrare",
		Teleport = { x = 1088.71, y = -3188.25, z = -39.99 }
	},
	
	ExitCoke = {
		Pos   = { x = 1088.71, y = -3188.25, z = -39.99 },
		Size  = {x = 2.5, y = 2.5, z = 0.5},
		Color = {r = 204, g = 204, b = 0},
		Marker= 1,
		Type  = "teleport",
		Hint  = "Premi ~INPUT_CONTEXT~ per uscire",
		Teleport = { x = -253.71, y = -2591.16, z = 5.0 },
	},

	MethSeller = {
		Pos   = { x = 56.98, y = 3690.52, z = 38.92 },
		Size  = {x = 1.0, y = 1.0, z = 0.3},
		Color = {r = 204, g = 204, b = 0},
		Marker= 1,
	},
	
	HeroineSeller = {
		Pos   = { x = 11.06, y = 3734.34, z = 38.99 },
		Size  = {x = 1.0, y = 1.0, z = 0.3},
		Color = {r = 204, g = 204, b = 0},
		Marker= 1,
	},
	
	SpeedballSeller = {
		Pos   = { x = 95.26, y = 3750.34, z = 39.72 },
		Size  = {x = 1.0, y = 1.0, z = 0.3},
		Color = {r = 204, g = 204, b = 0},
		Marker= 1,
	},
	
	CocaEthyleneSeller = {
		Pos   = { x = 97.88, y = 3682.89, z = 38.73 },
		Size  = {x = 1.0, y = 1.0, z = 0.3},
		Color = {r = 204, g = 204, b = 0},
		Marker= 1,
	},
	
	BrownBrownSeller = {
		Pos   = { x = 28.95, y = 3665.86, z = 39.44 },
		Size  = {x = 1.0, y = 1.0, z = 0.3},
		Color = {r = 204, g = 204, b = 0},
		Marker= 1,
	},
	
	Processsupermeth = {
		Pos   = { x = 1005.75, y = -3200.32, z = -39.99 },
		Size  = {x = 3.0, y = 3.0, z = 0.3},
		Color = {r = 204, g = 204, b = 0},
		Marker= 1,
	},
	
	Processheroine = {
		Pos   = { x = 1011.33, y = -3196.66, z = -39.99 },
		Size  = {x = 3.0, y = 3.0, z = 0.3},
		Color = {r = 204, g = 204, b = 0},
		Marker= 1,
	},
	
	Processspeedball = {
		Pos   = { x = 1101.89, y = -3194.1, z = -39.99 },
		Size  = {x = 2.0, y = 2.0, z = 0.3},
		Color = {r = 204, g = 204, b = 0},
		Marker= 1,
	},
	
	Processbrownbrown = {
		Pos   = { x = 1094.34, y = -3194.83, z = -39.99 },
		Size  = {x = 2.0, y = 2.0, z = 0.3},
		Color = {r = 204, g = 204, b = 0},
		Marker= 1,
	},
	
	Processcocaethylene = {
		Pos   = { x = 1087.21, y = -3197.48, z = -39.99 },
		Size  = {x = 2.0, y = 2.0, z = 0.3},
		Color = {r = 204, g = 204, b = 0},
		Marker= 1,
	},
}
