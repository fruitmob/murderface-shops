return {
	General = { -- General Stores 24/7 (cleaned - removed 2 invalid items)
		-- Removed: donut, angelsburger (not in inventory)
		{ lvl = 1, name = 'burger', price = 50 , category = 'food', customise = {'cheese', 'lettuce', 'hotsauce', 'mayonaise', 'burgerpatty'}},
		{ lvl = 1, name = 'water', price = 10 , category = 'beverages', customise = {'mineralwater', 'purifiedwater'}},
		{ lvl = 1, name = 'cola', price = 30 , category = 'beverages'},
		{ lvl = 1, name = 'coffee', price = 30 , category = 'beverages'},
		{ lvl = 1, name = 'sandwich', price = 30 , category = 'food'},
		{ lvl = 2, name = 'lighter', price = 20 , category = 'misc'},
		{ lvl = 2, name = 'phone', price = 1000 , category = 'gadget'},
		{ lvl = 2, name = 'radio', price = 1000 , category = 'gadget'},
		{ lvl = 2, name = 'latte', price = 150 , category = 'beverages'},
	},
	
	Ammunation = {
		{ lvl = 1, name = 'ammo-9', category = 'ammo', price = 15 },
		{ lvl = 1, name = 'ammo-rifle', category = 'ammo', price = 15 },
		{ lvl = 1, name = 'ammo-rifle2', category = 'ammo', price = 15 },
		{ lvl = 1, name = 'ammo-shotgun', category = 'ammo', price = 15 },
		{ lvl = 1, name = 'ammo-50', category = 'ammo', price = 15 },
		{ lvl = 1, name = 'ammo-45', category = 'ammo', price = 15 },
		{ lvl = 1, name = 'WEAPON_KNIFE', category = 'handheld', price = 5000 },
		{ lvl = 1, name = 'WEAPON_BAT', category = 'handheld', price = 3500 },
		{ lvl = 1, name = 'WEAPON_PISTOL', category = 'Handgun', price = 25000, metadata = { registered = true }, license = 'weapon' },
		{ lvl = 2, name = 'WEAPON_APPISTOL', category = 'Handgun', price = 10000, metadata = { registered = true }, license = 'weapon' },
		{ lvl = 2, name = 'WEAPON_BZGAS', category = 'throwable', price = 5000, metadata = { registered = true }, license = 'weapon' },
		{ lvl = 2, name = 'WEAPON_COMBATPDW', category = 'machine guns', price = 18000, metadata = { registered = true }, license = 'weapon' },
	
		-- New items
		{ lvl = 1, name = 'greentint', category = 'tints', price = 5000 },
		{ lvl = 1, name = 'goldtint', category = 'tints', price = 6000 },
		{ lvl = 1, name = 'pinktint', category = 'tints', price = 7000 },
		{ lvl = 1, name = 'armytint', category = 'tints', price = 8000 },
		{ lvl = 1, name = 'lspdtint', category = 'tints', price = 9000 },
		{ lvl = 1, name = 'orangetint', category = 'tints', price = 10000 },
		{ lvl = 1, name = 'platinumtint', category = 'tints', price = 11000 },
	},

	-- VehicleShop REMOVED - Too many invalid items (1268 items not in inventory)

	BlackMarketArms = {
		-- Existing Weapons
		{ lvl = 1, name = 'WEAPON_ASSAULTRIFLE', price = 85000, category = 'Weapon', currency = 'black_money', stock = 15 },
		{ lvl = 1, name = 'WEAPON_PISTOL50', price = 55000, category = 'Weapon', currency = 'black_money', stock = 15 },
		{ lvl = 1, name = 'WEAPON_ASSAULTSMG', price = 75000, category = 'Weapon', currency = 'black_money', stock = 15 },

		-- New Weapons
		{ lvl = 1, name = 'WEAPON_COMBATPISTOL', price = 50000, category = 'Weapon', currency = 'black_money', stock = 10 },
		{ lvl = 1, name = 'WEAPON_CARBINERIFLE_MK2', price = 95000, category = 'Weapon', currency = 'black_money', stock = 12 },
		{ lvl = 1, name = 'WEAPON_PUMPSHOTGUN_MK2', price = 75000, category = 'Weapon', currency = 'black_money', stock = 10 },
		{ lvl = 1, name = 'WEAPON_MACHINEPISTOL', price = 55000, category = 'Weapon', currency = 'black_money', stock = 10 },
		{ lvl = 1, name = 'WEAPON_SMG_MK2', price = 70000, category = 'Weapon', currency = 'black_money', stock = 10 },

		-- Additional Weapons
		{ lvl = 1, name = 'WEAPON_SWITCHBLADE', price = 800, metadata = { registered = false }, currency = 'black_money' },
		{ lvl = 1, name = 'WEAPON_CERAMICPISTOL', price = 5000, metadata = { registered = false }, currency = 'black_money' },
		{ lvl = 1, name = 'WEAPON_MILITARYRIFLE', price = 23000, metadata = { registered = false }, currency = 'black_money' },
		{ lvl = 1, name = 'WEAPON_CROWBAR', price = 900, metadata = { registered = false }, currency = 'black_money' },
		{ lvl = 1, name = 'WEAPON_DBSHOTGUN', price = 10000, metadata = { registered = false }, currency = 'black_money' },
		{ lvl = 1, name = 'WEAPON_FLAREGUN', price = 10000, metadata = { registered = false }, currency = 'black_money' },
		{ lvl = 1, name = 'WEAPON_STICKYBOMB', price = 700000, metadata = { registered = false }, currency = 'black_money' },
		{ lvl = 1, name = 'WEAPON_SMOKEGRENADE', price = 3000, metadata = { registered = false }, currency = 'black_money' },

		-- Attachments
		{ lvl = 1, name = 'at_clip_extended_rifle', price = 1500, category = 'Attachment', currency = 'black_money', stock = 10 },
		{ lvl = 1, name = 'at_grip', price = 1500, category = 'Attachment', currency = 'black_money', stock = 10 },
		{ lvl = 1, name = 'at_scope_medium', price = 1500, category = 'Attachment', currency = 'black_money', stock = 10 },
		{ lvl = 1, name = 'at_flashlight', price = 1500, category = 'Attachment', currency = 'black_money', stock = 10 },
		{ lvl = 1, name = 'at_suppressor_light', price = 7000, currency = 'black_money' },
		{ lvl = 1, name = 'at_clip_extended_pistol', price = 1500, category = 'Attachment', currency = 'black_money', stock = 10 },
		{ lvl = 1, name = 'at_clip_extended_smg', price = 1500, category = 'Attachment', currency = 'black_money', stock = 10 },
		{ lvl = 1, name = 'at_clip_drum_smg', price = 1500, category = 'Attachment', currency = 'black_money', stock = 10 },
		{ lvl = 1, name = 'at_clip_extended_shotgun', price = 1500, category = 'Attachment', currency = 'black_money', stock = 10 },
		{ lvl = 1, name = 'at_clip_drum_shotgun', price = 1500, category = 'Attachment', currency = 'black_money', stock = 10 },
		{ lvl = 1, name = 'at_suppressor_heavy', price = 10000, metadata = { registered = false }, currency = 'black_money' },
		{ lvl = 1, name = 'at_compensator', price = 1500, category = 'Attachment', currency = 'black_money', stock = 10 },
		{ lvl = 1, name = 'at_scope_small', price = 1500, category = 'Attachment', currency = 'black_money', stock = 10 },

	},
	
	WormsFunHouse = {
		-- Simplified items for debugging
		{ lvl = 1, name = 'WEAPON_RPG', price = 1000000, metadata = { registered = false }, stock = 5, currency = 'black_money' },
		{ lvl = 1, name = 'ecstasy1', price = 200, currency = 'black_money' },
		{ lvl = 1, name = 'lsd1', price = 300, currency = 'black_money' },
		{ lvl = 1, name = 'magicmushroom', price = 250, currency = 'black_money' },
		{ lvl = 1, name = 'peyote', price = 400, currency = 'black_money' },
		{ lvl = 1, name = 'weed_blunt', price = 50, currency = 'black_money' },
		{ lvl = 1, name = 'weed_joint', price = 30, currency = 'black_money' },
		{ lvl = 1, name = 'weed_package', price = 500, currency = 'black_money' },
		{ lvl = 1, name = 'coke_access', price = 5000, currency = 'black_money' },
		{ lvl = 1, name = 'meth_access', price = 5000, currency = 'black_money' },
		{ lvl = 1, name = 'weed_access', price = 5000, currency = 'black_money' },
		{ lvl = 1, name = 'heroin_syringe', price = 1000, currency = 'black_money' },
		{ lvl = 1, name = 'crack_pipe', price = 300, currency = 'black_money' },
		{ lvl = 1, name = 'xanaxpill', price = 100, currency = 'black_money' },
		{ lvl = 1, name = 'bag', price = 6000, currency = 'black_money' },
		{ lvl = 1, name = 'thermite_bomb', price = 15000, currency = 'black_money' },
		{ lvl = 1, name = 'big_bomb', price = 20000, currency = 'black_money' },
		{ lvl = 1, name = 'laptop_h', price = 2500, currency = 'black_money' },
		{ lvl = 1, name = 'c4_bomb', price = 10000, currency = 'black_money' },
		{ lvl = 1, name = 'crack_kit', price = 3000, currency = 'black_money' },
		{ lvl = 1, name = 'virus', price = 4500, currency = 'black_money' },
	},
	
	BlackMarketGoods = {
		-- Goods
		{ lvl = 1, name = 'rope', price = 8000, category = 'Goods', currency = 'black_money', stock = 5 },
		{ lvl = 1, name = 'drill', price = 10000, category = 'Goods', currency = 'black_money', stock = 5 },
		{ lvl = 1, name = 'electronickit', price = 1500, category = 'Goods', currency = 'black_money', stock = 5 },
		{ lvl = 1, name = 'gatecrack', price = 25000, category = 'Goods', currency = 'black_money', stock = 5 },
		{ lvl = 1, name = 'hack_usb', price = 10000, category = 'Goods', currency = 'black_money', stock = 5 },
		{ lvl = 1, name = 'bomb', price = 15000, category = 'Goods', currency = 'black_money', stock = 5 },
		{ lvl = 1, name = 'trojan_usb', price = 8000, category = 'Goods', currency = 'black_money', stock = 5 },
		{ lvl = 1, name = 'hack_laptop', price = 8000, category = 'Goods', currency = 'black_money', stock = 5 },
		{ lvl = 1, name = 'thermite', price = 20000, category = 'Goods', currency = 'black_money', stock = 5 },
		{ lvl = 1, name = 'radioscanner', price = 10000, category = 'Goods', currency = 'black_money', stock = 5 },
		{ lvl = 1, name = 'kq_hacker_usb', price = 10000, category = 'Goods', currency = 'black_money', stock = 5 },
		{ lvl = 1, name = 'security_card_01', price = 50000, category = 'Goods', currency = 'black_money', stock = 5 },
		{ lvl = 1, name = 'kq_airdrop_flare', price = 55000, category = 'Goods', currency = 'black_money', stock = 5 },

		-- Heist prerequisite items (economy audit 2026-02-20)
		{ lvl = 1, name = 'blue_usb', price = 5000, category = 'Goods', currency = 'black_money', stock = 5 },
		{ lvl = 1, name = 'kq_angle_grinder', price = 8000, category = 'Goods', currency = 'black_money', stock = 3 },
		{ lvl = 1, name = 'kq_radio_encoder', price = 12000, category = 'Goods', currency = 'black_money', stock = 3 },
		{ lvl = 1, name = 'fraud_laptop', price = 10000, category = 'Goods', currency = 'black_money', stock = 3 },
		{ lvl = 1, name = 'fraud_printer', price = 15000, category = 'Goods', currency = 'black_money', stock = 3 },
		{ lvl = 1, name = 'generator', price = 5000, category = 'Goods', currency = 'black_money', stock = 5 },
		{ lvl = 1, name = 'fuelcan', price = 500, category = 'Goods', currency = 'black_money' },
	},	
	
	
	LiquorStore = {
		-- Beers
		{ lvl = 1, name = 'beer', category = 'Beer', price = 80 },
		{ lvl = 1, name = 'am_beer', category = 'Beer', price = 85 },

		-- Spirits
		{ lvl = 1, name = 'vodka', category = 'Spirits', price = 150 },
		{ lvl = 1, name = 'whiskey', category = 'Spirits', price = 180 },
		{ lvl = 1, name = 'rum', category = 'Spirits', price = 160 },
		{ lvl = 1, name = 'ragga_rum', category = 'Spirits', price = 170 },
		{ lvl = 1, name = 'sake', category = 'Spirits', price = 140 },

		-- Wine & Special
		{ lvl = 1, name = 'wine', category = 'Wine', price = 200 },
		{ lvl = 1, name = 'chinese_rice_wine', category = 'Wine', price = 180 },

		-- Cocktails & Mixed Drinks
		{ lvl = 1, name = 'mojito', category = 'Cocktails', price = 120 },

		-- Non-Alcoholic Mixers
		{ lvl = 1, name = 'ramune_original', category = 'Mixers', price = 60 },

		-- Tobacco Products
		{ lvl = 1, name = 'kq_tobacco', category = 'Tobacco', price = 250 },
		{ lvl = 1, name = 'lighter', category = 'Accessories', price = 50 },
	},

	PoliceArmoury = { -- PoliceArmoury
		{ lvl = 1, category = 'ammo',  name = 'ammo-9', price = 2, },
		{ lvl = 1, category = 'ammo',  name = 'ammo-rifle', price = 2, },
		{ lvl = 1, category = 'ammo',  name = 'ammo-shotgun', price = 2, },
		{ lvl = 1, category = 'ammo',  name = 'ammo-50', price = 2, },
		{ lvl = 1, category = 'ammo',  name = 'ammo-rifle2', price = 2, },
		{ lvl = 1, category = 'ammo',  name = 'ammo-45', price = 2, },
		{ lvl = 1, category = 'throwable',  name = 'WEAPON_BZGAS', price = 300 },
		{ lvl = 1, category = 'pistol',  name = 'WEAPON_PISTOL50', price = 300 },
		{ lvl = 1, category = 'handheld',  name = 'WEAPON_FLASHLIGHT', price = 200 },
		{ lvl = 1, category = 'handheld',  name = 'WEAPON_NIGHTSTICK', price = 100 },
		{ lvl = 1, category = 'Pistol',  name = 'WEAPON_PISTOL', price = 500, metadata = { registered = true, serial = 'POL' }, },
		{ lvl = 1, category = 'Rifle',  name = 'WEAPON_CARBINERIFLE', price = 800, grade = 3, metadata = { registered = true, serial = 'POL' } },
		{ lvl = 1, category = 'Rifle',  name = 'WEAPON_SPECIALCARBINE', price = 800, grade = 3, metadata = { registered = true, serial = 'POL' } },
		{ lvl = 1, category = 'handheld',  name = 'WEAPON_STUNGUN', price = 300, metadata = { registered = true, serial = 'POL'} },
		{ lvl = 1, category = 'Shotguns',  name = 'WEAPON_PUMPSHOTGUN', price = 600, metadata = { registered = true, serial = 'POL'} },
		{ lvl = 1, category = 'SMG',  name = 'WEAPON_COMBATPDW', price = 700 },
		{ lvl = 2, name = 'radio', category = 'handheld', price = 100, metadata = { description = 'ten four rubber ducky' } },
		{ lvl = 2, name = 'armour', category = 'Tools', price = 100, metadata = { description = 'precautions and such' } },
		{ lvl = 2, name = 'uvlight', category = 'handheld', price = 100, metadata = { description = 'I heard if you point this at R Kelly he bursts into flames' } },

	},

	MechanicSupply = {
		-- Servicing Items
		{ lvl = 1, category = 'Servicing',  name = 'engine_oil', price = 150, label = 'Engine Oil' },
		{ lvl = 1, category = 'Servicing',  name = 'tyre_replacement', price = 750, label = 'Tyre Replacement' },
		{ lvl = 1, category = 'Servicing',  name = 'clutch_replacement', price = 1350, label = 'Clutch Replacement' },
		{ lvl = 1, category = 'Servicing',  name = 'air_filter', price = 30, label = 'Air Filter' },
		{ lvl = 1, category = 'Servicing',  name = 'spark_plug', price = 125, label = 'Spark Plug' },
		{ lvl = 1, category = 'Servicing',  name = 'suspension_parts', price = 1250, label = 'Suspension Parts' },
		{ lvl = 1, category = 'Servicing',  name = 'brakepad_replacement', price = 275, label = 'Brakepad Replacement' },
		{ lvl = 1, category = 'Servicing',  name = 'ev_motor', price = 6000, label = 'EV Motor' },
		{ lvl = 1, category = 'Servicing',  name = 'ev_battery', price = 8500, label = 'EV Battery' },
		{ lvl = 1, category = 'Servicing',  name = 'ev_coolant', price = 175, label = 'EV Coolant' },

		-- Usable Items
		{ lvl = 1, category = 'Usable Items',  name = 'lighting_controller', price = 150, label = 'Lighting Controller' },
		{ lvl = 1, category = 'Usable Items',  name = 'stancing_kit', price = 400, label = 'Stancing Kit' },
		{ lvl = 1, category = 'Usable Items',  name = 'cleaning_kit', price = 75, label = 'Cleaning Kit' },
		{ lvl = 1, category = 'Usable Items',  name = 'repair_kit', price = 150, label = 'Repair Kit' },
		{ lvl = 1, category = 'Usable Items',  name = 'duct_tape', price = 10, label = 'Duct Tape' },
	},
	
	

	-- PondCafe REMOVED - Invalid items not worth keeping (7 invalid items)

	['Balls8'] = { -- 8Balls (cleaned - removed 5 invalid items)
		-- Removed: sisig, liempo, barberq, red_horse, sanmig (not in inventory)
		{ lvl = 1, category = 'Drinks',  name = 'sprite', price = 1500},
		{ lvl = 1, category = 'Drinks',  name = 'grapejuice', price = 3500},
	},

	-- ClothingShop REMOVED - Too many invalid items (392 items not in inventory)

	YouTool = { -- (cleaned - removed 2 invalid items)
		-- Removed: fitbit, bolt_cutter (not in inventory)

		-- Tools
		{ lvl = 1, name = 'lockpick', price = 200, category = 'tools', label = 'Lockpick' },
		{ lvl = 1, name = 'WEAPON_WRENCH', price = 250, category = 'handheld', label = 'Wrench', metadata = { registered = false } },
		{ lvl = 1, name = 'WEAPON_HAMMER', price = 250, category = 'handheld', label = 'Hammer', metadata = { registered = false } },
		{ lvl = 1, name = 'repairkit', price = 250, category = 'tools', label = 'Repair Kit' },
		{ lvl = 1, name = 'screwdriverset', price = 350, category = 'tools', label = 'Screwdriver Set' },
		{ lvl = 1, name = 'crowbar', price = 150, category = 'handheld', label = 'Crowbar', metadata = { registered = false } },

		-- Gadgets
		{ lvl = 1, name = 'phone', price = 850, category = 'gadget', label = 'Phone' },
		{ lvl = 1, name = 'radio', price = 250, category = 'gadget', label = 'Radio' },

		-- Miscellaneous
		{ lvl = 1, name = 'firework1', price = 50, category = 'misc', label = 'Firework 1' },
		{ lvl = 1, name = 'firework2', price = 50, category = 'misc', label = 'Firework 2' },
		{ lvl = 1, name = 'firework3', price = 50, category = 'misc', label = 'Firework 3' },
		{ lvl = 1, name = 'firework4', price = 50, category = 'misc', label = 'Firework 4' },
		{ lvl = 1, name = 'binoculars', price = 50, category = 'tools', label = 'Binoculars' },

		-- Advanced Tools
		{ lvl = 1, name = 'advancedrepairkit', price = 500, category = 'tools', label = 'Advanced Repair Kit' },
		{ lvl = 1, name = 'big_drill', price = 600, category = 'tools', label = 'Big Drill' },
		{ lvl = 1, name = 'drill', price = 350, category = 'tools', label = 'Drill' },
		{ lvl = 1, name = 'cutter', price = 150, category = 'tools', label = 'Cutter' },
		{ lvl = 1, name = 'rope', price = 50, category = 'tools', label = 'Rope' },
		{ lvl = 1, name = 'kq_tow_rope', price = 350, category = 'tools', label = 'Tow Rope' },
		{ lvl = 1, name = 'kq_winch', price = 850, category = 'tools', label = 'Winch' },
		{ lvl = 1, name = 'blowtorch', price = 2500, category = 'tools', label = 'Blowtorch' },
		{ lvl = 1, name = 'gold_pan', price = 500, category = 'tools', label = 'Gold Pan' },
	},

	HuntingSupply = {
		{ lvl = 1, name = 'WEAPON_SNIPERRIFLE', price = 1000 },
		{ lvl = 1, name = 'ammo-sniper', price = 10 },
		{ lvl = 1, name = 'WEAPON_KNIFE', price = 500 },
		{ lvl = 1, name = 'hunting_stove', price = 500 },
	},

	Burgershot = {
		-- Food Items
		{ lvl = 1, name = 'the_bleeder_burger', category = 'Burgers', price = 150 },
		{ lvl = 1, name = 'heart_stopper_burger', category = 'Burgers', price = 175 },
		{ lvl = 1, name = 'meat_free_burger', category = 'Burgers', price = 125 },
		{ lvl = 1, name = 'money_shot_burger', category = 'Burgers', price = 200 },
		{ lvl = 1, name = 'sandwiches', category = 'Food', price = 100 },
		{ lvl = 1, name = 'fingle_burger', category = 'Burgers', price = 180 },
		{ lvl = 1, name = 'chocolate_donut', category = 'Desserts', price = 75 },
		{ lvl = 1, name = 'classic_donut', category = 'Desserts', price = 70 },
		{ lvl = 1, name = 'fries_burgershot', category = 'Sides', price = 60 },

		-- Drink Items
		{ lvl = 1, name = 'ecola', category = 'Drinks', price = 50 },
		{ lvl = 1, name = 'ecola_light', category = 'Drinks', price = 50 },
		{ lvl = 1, name = 'sprunk', category = 'Drinks', price = 50 },
		{ lvl = 1, name = 'drang_o_tang', category = 'Drinks', price = 60 },
		{ lvl = 1, name = 'sludgie_ice_blue', category = 'Frozen Drinks', price = 80 },
		{ lvl = 1, name = 'sludgie_ice_green', category = 'Frozen Drinks', price = 80 },
		{ lvl = 1, name = 'coffee', category = 'Hot Drinks', price = 40 },
	},

	UwUCafe = {
		-- Food Items
		{ lvl = 1, name = 'om_nom_omurice', category = 'Main Dishes', price = 180 },
		{ lvl = 1, name = 'kira_kira_currye', category = 'Main Dishes', price = 175 },
		{ lvl = 1, name = 'sugoi_katsu_sando', category = 'Sandwiches', price = 150 },
		{ lvl = 1, name = 'hamburg_steak', category = 'Main Dishes', price = 200 },
		{ lvl = 1, name = 'rice_balls', category = 'Snacks', price = 80 },
		{ lvl = 1, name = 'warm_chicken_noodle', category = 'Soups', price = 160 },
		{ lvl = 1, name = 'awwdorable_valentines_chocolate', category = 'Sweets', price = 120 },
		{ lvl = 1, name = 'strawberry_shortcake', category = 'Desserts', price = 140 },
		{ lvl = 1, name = 'meowchi_mochi_ice_cream', category = 'Desserts', price = 110 },
		{ lvl = 1, name = 'oxygen_cake', category = 'Desserts', price = 130 },
		{ lvl = 1, name = 'purrfect_parfait', category = 'Desserts', price = 150 },
		{ lvl = 1, name = 'ballbarry_cupcake', category = 'Desserts', price = 100 },
		{ lvl = 1, name = 'dragos_fire_cupcake', category = 'Desserts', price = 100 },
		{ lvl = 1, name = 'gingerkitty_cookie', category = 'Desserts', price = 70 },
		{ lvl = 1, name = 'doki_doki_pancakes', category = 'Breakfast', price = 120 },
		{ lvl = 1, name = 'cat_macaroon_brown', category = 'Sweets', price = 90 },
		{ lvl = 1, name = 'cat_macaroon_pink', category = 'Sweets', price = 90 },
		{ lvl = 1, name = 'cat_macaroon_turquoise', category = 'Sweets', price = 90 },
		{ lvl = 1, name = 'cat_macaroon_green', category = 'Sweets', price = 90 },

		-- Drink Items
		{ lvl = 1, name = 'matcha_coffee', category = 'Hot Drinks', price = 100 },
		{ lvl = 1, name = 'hot_chocolate', category = 'Hot Drinks', price = 90 },
		{ lvl = 1, name = 'lovely_hot_chocolate', category = 'Hot Drinks', price = 110 },
		{ lvl = 1, name = 'booba_milk_tea_2', category = 'Milk Tea', price = 120 },
		{ lvl = 1, name = 'sweet_herbal_tea', category = 'Tea', price = 80 },

		-- Collectables
		{ lvl = 1, name = 'princess_robo', category = 'Collectables', price = 250 },
		{ lvl = 1, name = 'cat_yellow', category = 'Collectables', price = 200 },
		{ lvl = 1, name = 'cat_purple', category = 'Collectables', price = 200 },
		{ lvl = 1, name = 'shiny_wasabi', category = 'Collectables', price = 300 },
		{ lvl = 1, name = 'cat_red', category = 'Collectables', price = 200 },
		{ lvl = 1, name = 'cat_green', category = 'Collectables', price = 200 },
		{ lvl = 1, name = 'cat_blue', category = 'Collectables', price = 200 },
		{ lvl = 1, name = 'cat_brown', category = 'Collectables', price = 200 },
	},

	BeanMachine = { -- Full DRC Bean Machine menu (finished products only)
		-- Coffee Drinks (Espresso-based)
		{ lvl = 1, name = 'affogato', category = 'Coffee', price = 110 },
		{ lvl = 1, name = 'cappuccino', category = 'Coffee', price = 95 },
		{ lvl = 1, name = 'espresso', category = 'Coffee', price = 70 },
		{ lvl = 1, name = 'flatwhite', category = 'Coffee', price = 90 },
		{ lvl = 1, name = 'irish', category = 'Coffee', price = 120 },
		{ lvl = 1, name = 'latte_macchiato', category = 'Coffee', price = 100 },
		{ lvl = 1, name = 'lungo', category = 'Coffee', price = 75 },
		{ lvl = 1, name = 'ristretto', category = 'Coffee', price = 75 },
		{ lvl = 1, name = 'turkish_coffee', category = 'Coffee', price = 110 },

		-- Tea Drinks
		{ lvl = 1, name = 'greentea', category = 'Tea', price = 65 },
		{ lvl = 1, name = 'jasminetea', category = 'Tea', price = 70 },
		{ lvl = 1, name = 'minttea', category = 'Tea', price = 65 },

		-- Hot Drinks
		{ lvl = 1, name = 'hot_chocolate', category = 'Hot Drinks', price = 85 },

		-- Specialty Drinks
		{ lvl = 1, name = 'lemon_crushedice', category = 'Specialty', price = 95 },
		{ lvl = 1, name = 'multivitamin_crushedice', category = 'Specialty', price = 100 },

		-- Muffins
		{ lvl = 1, name = 'blackberry_muffin', category = 'Muffins', price = 90 },
		{ lvl = 1, name = 'chocolate_muffin', category = 'Muffins', price = 95 },
		{ lvl = 1, name = 'lychee_muffin', category = 'Muffins', price = 100 },
		{ lvl = 1, name = 'muffin', category = 'Muffins', price = 85 },
		{ lvl = 1, name = 'oreo_muffin', category = 'Muffins', price = 100 },

		-- Donuts
		{ lvl = 1, name = 'donut', category = 'Donuts', price = 75 },
		{ lvl = 1, name = 'chocolate_donut', category = 'Donuts', price = 85 },
		{ lvl = 1, name = 'pink_donut', category = 'Donuts', price = 90 },
		{ lvl = 1, name = 'vanilla_donut', category = 'Donuts', price = 80 },

		-- Breakfast
		{ lvl = 1, name = 'toast', category = 'Breakfast', price = 60 },
	},

	PizzaThis = {
		-- Food Items
		{ lvl = 1, name = 'alla_vodka', category = 'Pasta', price = 180 },
		{ lvl = 1, name = 'bolognese', category = 'Pasta', price = 170 },
		{ lvl = 1, name = 'calamari_marinara', category = 'Pasta', price = 190 },
		{ lvl = 1, name = 'pescatore', category = 'Pasta', price = 200 },
		{ lvl = 1, name = 'pizza_capricciosa', category = 'Pizza', price = 150 },
		{ lvl = 1, name = 'pizza_diavola', category = 'Pizza', price = 155 },
		{ lvl = 1, name = 'pizza_margherita', category = 'Pizza', price = 130 },
		{ lvl = 1, name = 'pizza_marinara', category = 'Pizza', price = 125 },
		{ lvl = 1, name = 'pizza_prosciutto_e_funghi', category = 'Pizza', price = 165 },
		{ lvl = 1, name = 'pizza_vegetariana', category = 'Pizza', price = 140 },
		{ lvl = 1, name = 'chocolate_and_vanilla_gelato_ice_cream', category = 'Desserts', price = 110 },
		{ lvl = 1, name = 'medaly_of_fresh_fruits', category = 'Desserts', price = 100 },
		{ lvl = 1, name = 'tiramisu', category = 'Desserts', price = 120 },
		{ lvl = 1, name = 'dough', category = 'Ingredients', price = 20 },
		{ lvl = 1, name = 'pizza_base', category = 'Ingredients', price = 30 },

		-- Drink Items
		{ lvl = 1, name = 'latte_macchiato', category = 'Coffee', price = 90 },
		{ lvl = 1, name = 'cappuccino', category = 'Coffee', price = 95 },
		{ lvl = 1, name = 'piswasser', category = 'Beer', price = 70 },
		{ lvl = 1, name = 'am_beer', category = 'Beer', price = 65 },
		{ lvl = 1, name = 'duscbe_gold', category = 'Beer', price = 75 },
		{ lvl = 1, name = 'logger', category = 'Beer', price = 70 },
		{ lvl = 1, name = 'ragga_rum', category = 'Spirits', price = 100 },
		{ lvl = 1, name = 'cherenkov', category = 'Spirits', price = 110 },
		{ lvl = 1, name = 'ecola', category = 'Soft Drinks', price = 50 },
		{ lvl = 1, name = 'ecola_light', category = 'Soft Drinks', price = 50 },
		{ lvl = 1, name = 'sprunk', category = 'Soft Drinks', price = 50 },
		{ lvl = 1, name = 'drang_o_tang', category = 'Soft Drinks', price = 60 },
	},

	Pearls = {
		-- Food Items
		{ lvl = 1, name = 'calamari_marinara', category = 'Appetizers', price = 180 },
		{ lvl = 1, name = 'tiramisu', category = 'Desserts', price = 140 },
		{ lvl = 1, name = 'chocolate_and_vanilla_gelato_ice_cream', category = 'Desserts', price = 130 },
		{ lvl = 1, name = 'medaly_of_fresh_fruits', category = 'Desserts', price = 120 },
		{ lvl = 1, name = 'chocolate_ice_cream', category = 'Desserts', price = 110 },
		{ lvl = 1, name = 'vanilla_ice_cream', category = 'Desserts', price = 110 },

		-- Coffee & Hot Drinks
		{ lvl = 1, name = 'espresso', category = 'Coffee', price = 70 },
		{ lvl = 1, name = 'cappuccino', category = 'Coffee', price = 95 },
		{ lvl = 1, name = 'latte_macchiato', category = 'Coffee', price = 90 },
		{ lvl = 1, name = 'chocolate_mocha', category = 'Coffee', price = 100 },

		-- Alcoholic Drinks
		{ lvl = 1, name = 'piswasser', category = 'Beer', price = 85 },
		{ lvl = 1, name = 'duscbe_gold', category = 'Beer', price = 90 },
		{ lvl = 1, name = 'logger', category = 'Beer', price = 85 },
		{ lvl = 1, name = 'ragga_rum', category = 'Spirits', price = 150 },
		{ lvl = 1, name = 'cherenkov', category = 'Spirits', price = 160 },

		-- Soft Drinks
		{ lvl = 1, name = 'ecola', category = 'Soft Drinks', price = 50 },
		{ lvl = 1, name = 'ecola_light', category = 'Soft Drinks', price = 50 },
		{ lvl = 1, name = 'sprunk', category = 'Soft Drinks', price = 50 },
		{ lvl = 1, name = 'drang_o_tang', category = 'Soft Drinks', price = 60 },
	},

	BahamaMamas = {
		-- Tropical Cocktails
		{ lvl = 1, name = 'pina_colada', category = 'Cocktails', price = 140 },
		{ lvl = 1, name = 'blue_lagoon', category = 'Cocktails', price = 135 },
		{ lvl = 1, name = 'caipirinha', category = 'Cocktails', price = 130 },
		{ lvl = 1, name = 'mai_tai', category = 'Cocktails', price = 145 },
		{ lvl = 1, name = 'san_francisco', category = 'Cocktails', price = 135 },
		{ lvl = 1, name = 'mojito', category = 'Cocktails', price = 125 },

		-- Bar Snacks
		{ lvl = 1, name = 'bar_beans', category = 'Snacks', price = 60 },
		{ lvl = 1, name = 'bar_nuts', category = 'Snacks', price = 60 },
	},

	KoiRestaurant = {
		-- Main Dishes
		{ lvl = 1, name = 'banhxeo', category = 'Main Dishes', price = 180 },
		{ lvl = 1, name = 'bunbonambo', category = 'Main Dishes', price = 190 },
		{ lvl = 1, name = 'dorayaki_plate', category = 'Desserts', price = 120 },

		-- Drinks
		{ lvl = 1, name = 'cocacola', category = 'Soft Drinks', price = 50 },
		{ lvl = 1, name = 'cocacola_clear', category = 'Soft Drinks', price = 55 },
		{ lvl = 1, name = 'fanta', category = 'Soft Drinks', price = 50 },
		{ lvl = 1, name = 'greentea', category = 'Tea', price = 70 },
		{ lvl = 1, name = 'gyokuro', category = 'Tea', price = 80 },
		{ lvl = 1, name = 'chinese_rice_wine', category = 'Wine', price = 180 },
	},

	Tequilala = { -- (cleaned - removed 2 invalid items)
		-- Removed: tequila_sunrise, margarita (not in inventory)

		-- Cocktails & Drinks
		{ lvl = 1, name = 'mojito', category = 'Cocktails', price = 125 },
		{ lvl = 1, name = 'pina_colada', category = 'Cocktails', price = 140 },
		{ lvl = 1, name = 'blue_lagoon', category = 'Cocktails', price = 135 },

		-- Spirits & Beers
		{ lvl = 1, name = 'beer', category = 'Beer', price = 80 },
		{ lvl = 1, name = 'vodka', category = 'Spirits', price = 150 },
		{ lvl = 1, name = 'whiskey', category = 'Spirits', price = 180 },
		{ lvl = 1, name = 'rum', category = 'Spirits', price = 160 },

		-- Soft Drinks
		{ lvl = 1, name = 'cocacola', category = 'Soft Drinks', price = 50 },
		{ lvl = 1, name = 'sprunk', category = 'Soft Drinks', price = 50 },
	},

	VanillaUnicorn = {
		-- Tropical Cocktails
		{ lvl = 1, name = 'pina_colada', category = 'Cocktails', price = 140 },
		{ lvl = 1, name = 'blue_lagoon', category = 'Cocktails', price = 135 },
		{ lvl = 1, name = 'caipirinha', category = 'Cocktails', price = 130 },
		{ lvl = 1, name = 'mai_tai', category = 'Cocktails', price = 145 },
		{ lvl = 1, name = 'san_francisco', category = 'Cocktails', price = 135 },
		{ lvl = 1, name = 'mojito', category = 'Cocktails', price = 125 },

		-- Bar Snacks
		{ lvl = 1, name = 'bar_beans', category = 'Snacks', price = 60 },
		{ lvl = 1, name = 'bar_nuts', category = 'Snacks', price = 60 },

		-- Spirits
		{ lvl = 1, name = 'rhum', category = 'Spirits', price = 160 },
		{ lvl = 1, name = 'vodka', category = 'Spirits', price = 150 },
	},

	-- AutomotiveSupply REMOVED — orphaned category, never referenced by any shop.
	-- Each mechanic shop (Bennys, ToxsShop, Flywheels, LSCustoms, SonsAuto)
	-- has its own inline item list in storeitems.lua.

	-- Auto Supply Shops (Complete jg-mechanic inventory)
	ToxsShop = {
		-- Servicing Items
		{ lvl = 1, name = 'engine_oil', category = 'Servicing', price = 500 },
		{ lvl = 1, name = 'tyre_replacement', category = 'Servicing', price = 800 },
		{ lvl = 1, name = 'clutch_replacement', category = 'Servicing', price = 1200 },
		{ lvl = 1, name = 'air_filter', category = 'Servicing', price = 200 },
		{ lvl = 1, name = 'spark_plug', category = 'Servicing', price = 300 },
		{ lvl = 1, name = 'brakepad_replacement', category = 'Servicing', price = 900 },
		{ lvl = 1, name = 'suspension_parts', category = 'Servicing', price = 1500 },
		-- Engine Items
		{ lvl = 1, name = 'i4_engine', category = 'Engines', price = 15000 },
		{ lvl = 1, name = 'v6_engine', category = 'Engines', price = 25000 },
		{ lvl = 1, name = 'v8_engine', category = 'Engines', price = 37500 },
		{ lvl = 1, name = 'v12_engine', category = 'Engines', price = 50000 },
		{ lvl = 1, name = 'turbocharger', category = 'Engines', price = 17500 },
		-- Electric Engines
		{ lvl = 1, name = 'ev_motor', category = 'Electric', price = 30000 },
		{ lvl = 1, name = 'ev_battery', category = 'Electric', price = 20000 },
		{ lvl = 1, name = 'ev_coolant', category = 'Electric', price = 500 },
		-- Drivetrain Items
		{ lvl = 1, name = 'awd_drivetrain', category = 'Drivetrain', price = 50000 },
		{ lvl = 1, name = 'rwd_drivetrain', category = 'Drivetrain', price = 25000 },
		{ lvl = 1, name = 'fwd_drivetrain', category = 'Drivetrain', price = 25000 },
		-- Tuning Items
		{ lvl = 1, name = 'slick_tyres', category = 'Tires', price = 12500 },
		{ lvl = 1, name = 'semi_slick_tyres', category = 'Tires', price = 12500 },
		{ lvl = 1, name = 'offroad_tyres', category = 'Tires', price = 12500 },
		{ lvl = 1, name = 'bulletproof_tyres', category = 'Tires', price = 15000 },
		{ lvl = 1, name = 'drift_tuning_kit', category = 'Performance', price = 12500 },
		{ lvl = 1, name = 'ceramic_brakes', category = 'Performance', price = 12500 },
		-- Cosmetic Items
		{ lvl = 1, name = 'lighting_controller', category = 'Cosmetics', price = 1500 },
		{ lvl = 1, name = 'stancing_kit', category = 'Cosmetics', price = 2000 },
		{ lvl = 1, name = 'cosmetic_part', category = 'Cosmetics', price = 1000 },
		{ lvl = 1, name = 'respray_kit', category = 'Cosmetics', price = 3000 },
		{ lvl = 1, name = 'vehicle_wheels', category = 'Cosmetics', price = 2500 },
		{ lvl = 1, name = 'tyre_smoke_kit', category = 'Cosmetics', price = 1800 },
		{ lvl = 1, name = 'extras_kit', category = 'Cosmetics', price = 1200 },
		-- Nitrous & Cleaning Items
		{ lvl = 1, name = 'nitrous_bottle', category = 'Nitrous', price = 2500 },
		{ lvl = 1, name = 'empty_nitrous_bottle', category = 'Nitrous', price = 100 },
		{ lvl = 1, name = 'nitrous_install_kit', category = 'Nitrous', price = 3000 },
		{ lvl = 1, name = 'cleaning_kit', category = 'Tools', price = 500 },
		{ lvl = 1, name = 'repair_kit', category = 'Tools', price = 1500 },
		{ lvl = 1, name = 'duct_tape', category = 'Tools', price = 200 },
		-- Performance Item
		{ lvl = 1, name = 'performance_part', category = 'Performance', price = 5000 },
		-- Mechanic Tablet
		{ lvl = 1, name = 'mechanic_tablet', category = 'Tools', price = 8000 },
	},

	Bennys = {
		-- Servicing Items
		{ lvl = 1, name = 'engine_oil', category = 'Servicing', price = 500 },
		{ lvl = 1, name = 'tyre_replacement', category = 'Servicing', price = 800 },
		{ lvl = 1, name = 'clutch_replacement', category = 'Servicing', price = 1200 },
		{ lvl = 1, name = 'air_filter', category = 'Servicing', price = 200 },
		{ lvl = 1, name = 'spark_plug', category = 'Servicing', price = 300 },
		{ lvl = 1, name = 'brakepad_replacement', category = 'Servicing', price = 900 },
		{ lvl = 1, name = 'suspension_parts', category = 'Servicing', price = 1500 },
		-- Engine Items
		{ lvl = 1, name = 'i4_engine', category = 'Engines', price = 15000 },
		{ lvl = 1, name = 'v6_engine', category = 'Engines', price = 25000 },
		{ lvl = 1, name = 'v8_engine', category = 'Engines', price = 37500 },
		{ lvl = 1, name = 'v12_engine', category = 'Engines', price = 50000 },
		{ lvl = 1, name = 'turbocharger', category = 'Engines', price = 17500 },
		{ lvl = 1, name = 'ev_motor', category = 'Electric', price = 30000 },
		{ lvl = 1, name = 'ev_battery', category = 'Electric', price = 20000 },
		{ lvl = 1, name = 'ev_coolant', category = 'Electric', price = 500 },
		{ lvl = 1, name = 'awd_drivetrain', category = 'Drivetrain', price = 50000 },
		{ lvl = 1, name = 'rwd_drivetrain', category = 'Drivetrain', price = 25000 },
		{ lvl = 1, name = 'fwd_drivetrain', category = 'Drivetrain', price = 25000 },
		{ lvl = 1, name = 'slick_tyres', category = 'Tires', price = 12500 },
		{ lvl = 1, name = 'semi_slick_tyres', category = 'Tires', price = 12500 },
		{ lvl = 1, name = 'offroad_tyres', category = 'Tires', price = 12500 },
		{ lvl = 1, name = 'bulletproof_tyres', category = 'Tires', price = 15000 },
		{ lvl = 1, name = 'drift_tuning_kit', category = 'Performance', price = 12500 },
		{ lvl = 1, name = 'ceramic_brakes', category = 'Performance', price = 12500 },
		{ lvl = 1, name = 'lighting_controller', category = 'Cosmetics', price = 1500 },
		{ lvl = 1, name = 'stancing_kit', category = 'Cosmetics', price = 2000 },
		{ lvl = 1, name = 'cosmetic_part', category = 'Cosmetics', price = 1000 },
		{ lvl = 1, name = 'respray_kit', category = 'Cosmetics', price = 3000 },
		{ lvl = 1, name = 'vehicle_wheels', category = 'Cosmetics', price = 2500 },
		{ lvl = 1, name = 'tyre_smoke_kit', category = 'Cosmetics', price = 1800 },
		{ lvl = 1, name = 'extras_kit', category = 'Cosmetics', price = 1200 },
		{ lvl = 1, name = 'nitrous_bottle', category = 'Nitrous', price = 2500 },
		{ lvl = 1, name = 'empty_nitrous_bottle', category = 'Nitrous', price = 100 },
		{ lvl = 1, name = 'nitrous_install_kit', category = 'Nitrous', price = 3000 },
		{ lvl = 1, name = 'cleaning_kit', category = 'Tools', price = 500 },
		{ lvl = 1, name = 'repair_kit', category = 'Tools', price = 1500 },
		{ lvl = 1, name = 'duct_tape', category = 'Tools', price = 200 },
		{ lvl = 1, name = 'performance_part', category = 'Performance', price = 5000 },
		{ lvl = 1, name = 'mechanic_tablet', category = 'Tools', price = 8000 },
	},

	LSCustoms = {
		-- Same complete inventory as Bennys
		{ lvl = 1, name = 'engine_oil', category = 'Servicing', price = 500 },
		{ lvl = 1, name = 'tyre_replacement', category = 'Servicing', price = 800 },
		{ lvl = 1, name = 'clutch_replacement', category = 'Servicing', price = 1200 },
		{ lvl = 1, name = 'air_filter', category = 'Servicing', price = 200 },
		{ lvl = 1, name = 'spark_plug', category = 'Servicing', price = 300 },
		{ lvl = 1, name = 'brakepad_replacement', category = 'Servicing', price = 900 },
		{ lvl = 1, name = 'suspension_parts', category = 'Servicing', price = 1500 },
		{ lvl = 1, name = 'i4_engine', category = 'Engines', price = 15000 },
		{ lvl = 1, name = 'v6_engine', category = 'Engines', price = 25000 },
		{ lvl = 1, name = 'v8_engine', category = 'Engines', price = 37500 },
		{ lvl = 1, name = 'v12_engine', category = 'Engines', price = 50000 },
		{ lvl = 1, name = 'turbocharger', category = 'Engines', price = 17500 },
		{ lvl = 1, name = 'ev_motor', category = 'Electric', price = 30000 },
		{ lvl = 1, name = 'ev_battery', category = 'Electric', price = 20000 },
		{ lvl = 1, name = 'ev_coolant', category = 'Electric', price = 500 },
		{ lvl = 1, name = 'awd_drivetrain', category = 'Drivetrain', price = 50000 },
		{ lvl = 1, name = 'rwd_drivetrain', category = 'Drivetrain', price = 25000 },
		{ lvl = 1, name = 'fwd_drivetrain', category = 'Drivetrain', price = 25000 },
		{ lvl = 1, name = 'slick_tyres', category = 'Tires', price = 12500 },
		{ lvl = 1, name = 'semi_slick_tyres', category = 'Tires', price = 12500 },
		{ lvl = 1, name = 'offroad_tyres', category = 'Tires', price = 12500 },
		{ lvl = 1, name = 'bulletproof_tyres', category = 'Tires', price = 15000 },
		{ lvl = 1, name = 'drift_tuning_kit', category = 'Performance', price = 12500 },
		{ lvl = 1, name = 'ceramic_brakes', category = 'Performance', price = 12500 },
		{ lvl = 1, name = 'lighting_controller', category = 'Cosmetics', price = 1500 },
		{ lvl = 1, name = 'stancing_kit', category = 'Cosmetics', price = 2000 },
		{ lvl = 1, name = 'cosmetic_part', category = 'Cosmetics', price = 1000 },
		{ lvl = 1, name = 'respray_kit', category = 'Cosmetics', price = 3000 },
		{ lvl = 1, name = 'vehicle_wheels', category = 'Cosmetics', price = 2500 },
		{ lvl = 1, name = 'tyre_smoke_kit', category = 'Cosmetics', price = 1800 },
		{ lvl = 1, name = 'extras_kit', category = 'Cosmetics', price = 1200 },
		{ lvl = 1, name = 'nitrous_bottle', category = 'Nitrous', price = 2500 },
		{ lvl = 1, name = 'empty_nitrous_bottle', category = 'Nitrous', price = 100 },
		{ lvl = 1, name = 'nitrous_install_kit', category = 'Nitrous', price = 3000 },
		{ lvl = 1, name = 'cleaning_kit', category = 'Tools', price = 500 },
		{ lvl = 1, name = 'repair_kit', category = 'Tools', price = 1500 },
		{ lvl = 1, name = 'duct_tape', category = 'Tools', price = 200 },
		{ lvl = 1, name = 'performance_part', category = 'Performance', price = 5000 },
		{ lvl = 1, name = 'mechanic_tablet', category = 'Tools', price = 8000 },
	},

	Flywheels = {
		-- Same complete inventory
		{ lvl = 1, name = 'engine_oil', category = 'Servicing', price = 500 },
		{ lvl = 1, name = 'tyre_replacement', category = 'Servicing', price = 800 },
		{ lvl = 1, name = 'clutch_replacement', category = 'Servicing', price = 1200 },
		{ lvl = 1, name = 'air_filter', category = 'Servicing', price = 200 },
		{ lvl = 1, name = 'spark_plug', category = 'Servicing', price = 300 },
		{ lvl = 1, name = 'brakepad_replacement', category = 'Servicing', price = 900 },
		{ lvl = 1, name = 'suspension_parts', category = 'Servicing', price = 1500 },
		{ lvl = 1, name = 'i4_engine', category = 'Engines', price = 15000 },
		{ lvl = 1, name = 'v6_engine', category = 'Engines', price = 25000 },
		{ lvl = 1, name = 'v8_engine', category = 'Engines', price = 37500 },
		{ lvl = 1, name = 'v12_engine', category = 'Engines', price = 50000 },
		{ lvl = 1, name = 'turbocharger', category = 'Engines', price = 17500 },
		{ lvl = 1, name = 'ev_motor', category = 'Electric', price = 30000 },
		{ lvl = 1, name = 'ev_battery', category = 'Electric', price = 20000 },
		{ lvl = 1, name = 'ev_coolant', category = 'Electric', price = 500 },
		{ lvl = 1, name = 'awd_drivetrain', category = 'Drivetrain', price = 50000 },
		{ lvl = 1, name = 'rwd_drivetrain', category = 'Drivetrain', price = 25000 },
		{ lvl = 1, name = 'fwd_drivetrain', category = 'Drivetrain', price = 25000 },
		{ lvl = 1, name = 'slick_tyres', category = 'Tires', price = 12500 },
		{ lvl = 1, name = 'semi_slick_tyres', category = 'Tires', price = 12500 },
		{ lvl = 1, name = 'offroad_tyres', category = 'Tires', price = 12500 },
		{ lvl = 1, name = 'bulletproof_tyres', category = 'Tires', price = 15000 },
		{ lvl = 1, name = 'drift_tuning_kit', category = 'Performance', price = 12500 },
		{ lvl = 1, name = 'ceramic_brakes', category = 'Performance', price = 12500 },
		{ lvl = 1, name = 'lighting_controller', category = 'Cosmetics', price = 1500 },
		{ lvl = 1, name = 'stancing_kit', category = 'Cosmetics', price = 2000 },
		{ lvl = 1, name = 'cosmetic_part', category = 'Cosmetics', price = 1000 },
		{ lvl = 1, name = 'respray_kit', category = 'Cosmetics', price = 3000 },
		{ lvl = 1, name = 'vehicle_wheels', category = 'Cosmetics', price = 2500 },
		{ lvl = 1, name = 'tyre_smoke_kit', category = 'Cosmetics', price = 1800 },
		{ lvl = 1, name = 'extras_kit', category = 'Cosmetics', price = 1200 },
		{ lvl = 1, name = 'nitrous_bottle', category = 'Nitrous', price = 2500 },
		{ lvl = 1, name = 'empty_nitrous_bottle', category = 'Nitrous', price = 100 },
		{ lvl = 1, name = 'nitrous_install_kit', category = 'Nitrous', price = 3000 },
		{ lvl = 1, name = 'cleaning_kit', category = 'Tools', price = 500 },
		{ lvl = 1, name = 'repair_kit', category = 'Tools', price = 1500 },
		{ lvl = 1, name = 'duct_tape', category = 'Tools', price = 200 },
		{ lvl = 1, name = 'performance_part', category = 'Performance', price = 5000 },
		{ lvl = 1, name = 'mechanic_tablet', category = 'Tools', price = 8000 },
	},

	-----------------------------------------------------------------------
	-- Sewer MLO Shops (2026-02-20)
	-----------------------------------------------------------------------

	-- "The Rat's Nest" - Sewer entrance black market
	-- Mix of drugs, break-in tools, melee weapons, survival gear
	-- Prices slightly below surface black markets (risk discount for the sewer)
	SewerMarket = {
		-- Drugs & Substances
		{ lvl = 1, name = 'ecstasy1', price = 150, category = 'Substances', currency = 'black_money' },
		{ lvl = 1, name = 'lsd1', price = 250, category = 'Substances', currency = 'black_money' },
		{ lvl = 1, name = 'magicmushroom', price = 200, category = 'Substances', currency = 'black_money' },
		{ lvl = 1, name = 'peyote', price = 350, category = 'Substances', currency = 'black_money' },
		{ lvl = 1, name = 'weed_joint', price = 25, category = 'Substances', currency = 'black_money' },
		{ lvl = 1, name = 'weed_blunt', price = 40, category = 'Substances', currency = 'black_money' },
		{ lvl = 1, name = 'weed_package', price = 400, category = 'Substances', currency = 'black_money' },
		{ lvl = 1, name = 'crack_pipe', price = 250, category = 'Substances', currency = 'black_money' },
		{ lvl = 1, name = 'heroin_syringe', price = 800, category = 'Substances', currency = 'black_money' },
		{ lvl = 1, name = 'xanaxpill', price = 80, category = 'Substances', currency = 'black_money' },

		-- Melee Weapons
		{ lvl = 1, name = 'WEAPON_SWITCHBLADE', price = 500, category = 'Weapons', currency = 'black_money', metadata = { registered = false } },
		{ lvl = 1, name = 'WEAPON_KNIFE', price = 2500, category = 'Weapons', currency = 'black_money', metadata = { registered = false } },
		{ lvl = 1, name = 'WEAPON_MACHETE', price = 6000, category = 'Weapons', currency = 'black_money', metadata = { registered = false } },
		{ lvl = 1, name = 'WEAPON_CROWBAR', price = 500, category = 'Weapons', currency = 'black_money', metadata = { registered = false } },
		{ lvl = 1, name = 'WEAPON_BAT', price = 1500, category = 'Weapons', currency = 'black_money', metadata = { registered = false } },
		{ lvl = 1, name = 'WEAPON_KNUCKLE', price = 3000, category = 'Weapons', currency = 'black_money', metadata = { registered = false } },

		-- Breaking & Entering Tools
		{ lvl = 1, name = 'lockpick', price = 150, category = 'Tools', currency = 'black_money' },
		{ lvl = 1, name = 'electronickit', price = 1000, category = 'Tools', currency = 'black_money' },
		{ lvl = 1, name = 'drill', price = 300, category = 'Tools', currency = 'black_money' },
		{ lvl = 1, name = 'screwdriverset', price = 250, category = 'Tools', currency = 'black_money' },
		{ lvl = 1, name = 'radioscanner', price = 8000, category = 'Tools', currency = 'black_money' },

		-- Survival & Misc
		{ lvl = 1, name = 'armour', price = 4000, category = 'Gear', currency = 'black_money' },
		{ lvl = 1, name = 'lighter', price = 15, category = 'Misc', currency = 'black_money' },
		{ lvl = 1, name = 'bag', price = 4500, category = 'Gear', currency = 'black_money' },
		{ lvl = 1, name = 'rope', price = 150, category = 'Misc', currency = 'black_money' },
		{ lvl = 1, name = 'bandage', price = 200, category = 'Gear', currency = 'black_money' },
	},

	-- "The Underbelly" - Ironic five-star sewer dining
	-- Premium food & cocktails at absurd markups (regular money)
	-- The joke: Michelin-star prices, served by a hillbilly in a sewer
	SewerBistro = {
		-- Chef's Specials (the audacity)
		{ lvl = 1, name = 'tiramisu', price = 1500, category = 'Chef\'s Specials' },
		{ lvl = 1, name = 'calamari_marinara', price = 2000, category = 'Chef\'s Specials' },
		{ lvl = 1, name = 'alla_vodka', price = 1800, category = 'Chef\'s Specials' },
		{ lvl = 1, name = 'bolognese', price = 1600, category = 'Chef\'s Specials' },
		{ lvl = 1, name = 'pescatore', price = 2200, category = 'Chef\'s Specials' },
		{ lvl = 1, name = 'hamburg_steak', price = 1900, category = 'Chef\'s Specials' },

		-- Desserts (sewer-chilled)
		{ lvl = 1, name = 'chocolate_and_vanilla_gelato_ice_cream', price = 800, category = 'Desserts' },
		{ lvl = 1, name = 'medaly_of_fresh_fruits', price = 900, category = 'Desserts' },
		{ lvl = 1, name = 'strawberry_shortcake', price = 1000, category = 'Desserts' },
		{ lvl = 1, name = 'oxygen_cake', price = 1200, category = 'Desserts' },

		-- Signature Cocktails (shaken, not stirred, in the sewer)
		{ lvl = 1, name = 'pina_colada', price = 800, category = 'Cocktails' },
		{ lvl = 1, name = 'blue_lagoon', price = 750, category = 'Cocktails' },
		{ lvl = 1, name = 'mai_tai', price = 900, category = 'Cocktails' },
		{ lvl = 1, name = 'mojito', price = 600, category = 'Cocktails' },
		{ lvl = 1, name = 'caipirinha', price = 700, category = 'Cocktails' },

		-- Fine Spirits
		{ lvl = 1, name = 'whiskey', price = 1200, category = 'Spirits' },
		{ lvl = 1, name = 'wine', price = 1000, category = 'Spirits' },
		{ lvl = 1, name = 'sake', price = 800, category = 'Spirits' },
		{ lvl = 1, name = 'rhum', price = 900, category = 'Spirits' },

		-- Coffee Service
		{ lvl = 1, name = 'irish', price = 500, category = 'Coffee' },
		{ lvl = 1, name = 'turkish_coffee', price = 400, category = 'Coffee' },
		{ lvl = 1, name = 'affogato', price = 350, category = 'Coffee' },
	},

	-- "Underground Parts" - Sewer chop shop vehicle parts
	-- Stolen parts at 50-60% of legitimate shop prices (black_money)
	SewerChopShop = {
		-- Stolen Engines (discount vs $15k-75k legit)
		{ lvl = 1, name = 'i4_engine', price = 8000, category = 'Engines', currency = 'black_money', stock = 5 },
		{ lvl = 1, name = 'v6_engine', price = 14000, category = 'Engines', currency = 'black_money', stock = 5 },
		{ lvl = 1, name = 'v8_engine', price = 20000, category = 'Engines', currency = 'black_money', stock = 3 },
		{ lvl = 1, name = 'v12_engine', price = 27000, category = 'Engines', currency = 'black_money', stock = 2 },
		{ lvl = 1, name = 'turbocharger', price = 10000, category = 'Engines', currency = 'black_money', stock = 5 },

		-- Hot Tires & Brakes
		{ lvl = 1, name = 'bulletproof_tyres', price = 8000, category = 'Tires', currency = 'black_money', stock = 5 },
		{ lvl = 1, name = 'slick_tyres', price = 7000, category = 'Tires', currency = 'black_money', stock = 8 },
		{ lvl = 1, name = 'semi_slick_tyres', price = 7000, category = 'Tires', currency = 'black_money', stock = 8 },
		{ lvl = 1, name = 'offroad_tyres', price = 7000, category = 'Tires', currency = 'black_money', stock = 8 },
		{ lvl = 1, name = 'tyre_replacement', price = 400, category = 'Tires', currency = 'black_money' },
		{ lvl = 1, name = 'ceramic_brakes', price = 7000, category = 'Brakes', currency = 'black_money', stock = 5 },

		-- Performance (for getaway cars)
		{ lvl = 1, name = 'suspension_parts', price = 800, category = 'Performance', currency = 'black_money' },
		{ lvl = 1, name = 'drift_tuning_kit', price = 7000, category = 'Performance', currency = 'black_money', stock = 5 },
		{ lvl = 1, name = 'nitrous_bottle', price = 1500, category = 'Nitrous', currency = 'black_money' },
		{ lvl = 1, name = 'nitrous_install_kit', price = 1800, category = 'Nitrous', currency = 'black_money', stock = 5 },
		{ lvl = 1, name = 'performance_part', price = 3000, category = 'Performance', currency = 'black_money', stock = 5 },

		-- Utility
		{ lvl = 1, name = 'repair_kit', price = 800, category = 'Tools', currency = 'black_money' },
		{ lvl = 1, name = 'duct_tape', price = 100, category = 'Tools', currency = 'black_money' },
		{ lvl = 1, name = 'cleaning_kit', price = 300, category = 'Tools', currency = 'black_money' },
	},

	-- Locksmith Shop (not in sewer)
	-- Specialized lock & security tools at fair prices (regular money)
	LocksmithShop = {
		-- Core Locksmith Tools
		{ lvl = 1, name = 'lockpick', price = 300, category = 'Locksmith' },
		{ lvl = 1, name = 'electronickit', price = 2000, category = 'Locksmith' },
		{ lvl = 1, name = 'screwdriverset', price = 500, category = 'Tools' },
		{ lvl = 1, name = 'drill', price = 500, category = 'Tools' },
		{ lvl = 1, name = 'big_drill', price = 900, category = 'Tools' },
		{ lvl = 1, name = 'cutter', price = 250, category = 'Tools' },
		{ lvl = 1, name = 'blowtorch', price = 3500, category = 'Tools' },
		{ lvl = 1, name = 'crowbar', price = 250, category = 'Tools' },

		-- Security & Access
		{ lvl = 1, name = 'gatecrack', price = 30000, category = 'Security', stock = 3 },
		{ lvl = 1, name = 'hack_usb', price = 12000, category = 'Security', stock = 5 },
		{ lvl = 1, name = 'trojan_usb', price = 10000, category = 'Security', stock = 5 },
		{ lvl = 1, name = 'radioscanner', price = 12000, category = 'Security', stock = 5 },

		-- Misc
		{ lvl = 1, name = 'rope', price = 100, category = 'Misc' },
		{ lvl = 1, name = 'WEAPON_FLASHLIGHT', price = 300, category = 'Tools' },
	},

	SonsAuto = {
		-- Same complete inventory
		{ lvl = 1, name = 'engine_oil', category = 'Servicing', price = 500 },
		{ lvl = 1, name = 'tyre_replacement', category = 'Servicing', price = 800 },
		{ lvl = 1, name = 'clutch_replacement', category = 'Servicing', price = 1200 },
		{ lvl = 1, name = 'air_filter', category = 'Servicing', price = 200 },
		{ lvl = 1, name = 'spark_plug', category = 'Servicing', price = 300 },
		{ lvl = 1, name = 'brakepad_replacement', category = 'Servicing', price = 900 },
		{ lvl = 1, name = 'suspension_parts', category = 'Servicing', price = 1500 },
		{ lvl = 1, name = 'i4_engine', category = 'Engines', price = 15000 },
		{ lvl = 1, name = 'v6_engine', category = 'Engines', price = 25000 },
		{ lvl = 1, name = 'v8_engine', category = 'Engines', price = 37500 },
		{ lvl = 1, name = 'v12_engine', category = 'Engines', price = 50000 },
		{ lvl = 1, name = 'turbocharger', category = 'Engines', price = 17500 },
		{ lvl = 1, name = 'ev_motor', category = 'Electric', price = 30000 },
		{ lvl = 1, name = 'ev_battery', category = 'Electric', price = 20000 },
		{ lvl = 1, name = 'ev_coolant', category = 'Electric', price = 500 },
		{ lvl = 1, name = 'awd_drivetrain', category = 'Drivetrain', price = 50000 },
		{ lvl = 1, name = 'rwd_drivetrain', category = 'Drivetrain', price = 25000 },
		{ lvl = 1, name = 'fwd_drivetrain', category = 'Drivetrain', price = 25000 },
		{ lvl = 1, name = 'slick_tyres', category = 'Tires', price = 12500 },
		{ lvl = 1, name = 'semi_slick_tyres', category = 'Tires', price = 12500 },
		{ lvl = 1, name = 'offroad_tyres', category = 'Tires', price = 12500 },
		{ lvl = 1, name = 'bulletproof_tyres', category = 'Tires', price = 15000 },
		{ lvl = 1, name = 'drift_tuning_kit', category = 'Performance', price = 12500 },
		{ lvl = 1, name = 'ceramic_brakes', category = 'Performance', price = 12500 },
		{ lvl = 1, name = 'lighting_controller', category = 'Cosmetics', price = 1500 },
		{ lvl = 1, name = 'stancing_kit', category = 'Cosmetics', price = 2000 },
		{ lvl = 1, name = 'cosmetic_part', category = 'Cosmetics', price = 1000 },
		{ lvl = 1, name = 'respray_kit', category = 'Cosmetics', price = 3000 },
		{ lvl = 1, name = 'vehicle_wheels', category = 'Cosmetics', price = 2500 },
		{ lvl = 1, name = 'tyre_smoke_kit', category = 'Cosmetics', price = 1800 },
		{ lvl = 1, name = 'extras_kit', category = 'Cosmetics', price = 1200 },
		{ lvl = 1, name = 'nitrous_bottle', category = 'Nitrous', price = 2500 },
		{ lvl = 1, name = 'empty_nitrous_bottle', category = 'Nitrous', price = 100 },
		{ lvl = 1, name = 'nitrous_install_kit', category = 'Nitrous', price = 3000 },
		{ lvl = 1, name = 'cleaning_kit', category = 'Tools', price = 500 },
		{ lvl = 1, name = 'repair_kit', category = 'Tools', price = 1500 },
		{ lvl = 1, name = 'duct_tape', category = 'Tools', price = 200 },
		{ lvl = 1, name = 'performance_part', category = 'Performance', price = 5000 },
		{ lvl = 1, name = 'mechanic_tablet', category = 'Tools', price = 8000 },
	},

}