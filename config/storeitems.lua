return {
	General = { -- General Stores 24/7 (expanded 2026-02-22)
		-- Food
		-- FMRP: Basic Crafting Materials
		{ lvl = 1, name = 'plastic', price = 20, category = 'Supplies' },

		{ lvl = 1, name = 'burger', price = 50, category = 'Food', customise = {'cheese', 'lettuce', 'hotsauce', 'mayonaise', 'burgerpatty'}},
		{ lvl = 1, name = 'sandwich', price = 30, category = 'Food' },
		{ lvl = 1, name = 'donut', price = 25, category = 'Food' },
		{ lvl = 1, name = 'chocolate_donut', price = 30, category = 'Food' },
		{ lvl = 1, name = 'classic_donut', price = 25, category = 'Food' },
		{ lvl = 1, name = 'toast', price = 15, category = 'Food' },
		{ lvl = 1, name = 'mustard', price = 10, category = 'Food' },

		-- Fruit & Dairy
		{ lvl = 1, name = 'apple', price = 8, category = 'Fruit & Dairy' },
		{ lvl = 1, name = 'banana', price = 8, category = 'Fruit & Dairy' },
		{ lvl = 1, name = 'orange', price = 10, category = 'Fruit & Dairy' },
		{ lvl = 1, name = 'strawberry', price = 8, category = 'Fruit & Dairy' },
		{ lvl = 1, name = 'grape', price = 8, category = 'Fruit & Dairy' },
		{ lvl = 1, name = 'mango', price = 15, category = 'Fruit & Dairy' },
		{ lvl = 1, name = 'watermelon', price = 25, category = 'Fruit & Dairy' },
		{ lvl = 1, name = 'milk', price = 12, category = 'Fruit & Dairy' },

		-- Beverages
		{ lvl = 1, name = 'water', price = 10, category = 'Beverages', customise = {'mineralwater', 'purifiedwater'}},
		{ lvl = 1, name = 'cola', price = 30, category = 'Beverages' },
		{ lvl = 1, name = 'sprunk', price = 15, category = 'Beverages' },
		{ lvl = 1, name = 'ecola', price = 15, category = 'Beverages' },
		{ lvl = 1, name = 'ecola_light', price = 15, category = 'Beverages' },
		{ lvl = 1, name = 'drang_o_tang', price = 20, category = 'Beverages' },
		{ lvl = 1, name = 'cocacola', price = 15, category = 'Beverages' },
		{ lvl = 1, name = 'fanta', price = 15, category = 'Beverages' },
		{ lvl = 1, name = 'coffee', price = 30, category = 'Beverages' },
		{ lvl = 1, name = 'latte', price = 150, category = 'Beverages' },
		{ lvl = 1, name = 'hot_chocolate', price = 40, category = 'Beverages' },

		-- Supplies & Gadgets
		{ lvl = 2, name = 'lighter', price = 20, category = 'Supplies' },
		{ lvl = 2, name = 'bandage', price = 75, category = 'Supplies' },
		{ lvl = 2, name = 'binoculars', price = 150, category = 'Supplies' },
		{ lvl = 2, name = 'skateboard', price = 200, category = 'Supplies' },
		{ lvl = 2, name = 'phone', price = 1000, category = 'Gadgets' },
		{ lvl = 2, name = 'radio', price = 1000, category = 'Gadgets' },

		-- Sports & Recreation
		{ lvl = 1, name = 'football', price = 150, category = 'Sports & Recreation' },
		{ lvl = 1, name = 'basketball', price = 150, category = 'Sports & Recreation' },
		{ lvl = 1, name = 'baseball', price = 100, category = 'Sports & Recreation' },
		{ lvl = 1, name = 'soccer', price = 150, category = 'Sports & Recreation' },
		{ lvl = 1, name = 'slaptable', price = 250, category = 'Sports & Recreation' },
		{ lvl = 1, name = 'glowsaber', price = 500, category = 'Sports & Recreation' },

		-- Seasonal
		{ lvl = 1, name = 'firework1', price = 30, category = 'Seasonal' },
		{ lvl = 1, name = 'firework2', price = 30, category = 'Seasonal' },
		{ lvl = 1, name = 'firework3', price = 30, category = 'Seasonal' },
		{ lvl = 1, name = 'firework4', price = 30, category = 'Seasonal' },
	},
	
	Ammunation = { -- expanded 2026-02-22
		{ lvl = 1, name = 'ammo-9', category = 'Ammo', price = 15 },
		{ lvl = 1, name = 'ammo-38', category = 'Ammo', price = 15 },
		{ lvl = 1, name = 'ammo-45', category = 'Ammo', price = 15 },
		{ lvl = 1, name = 'ammo-rifle', category = 'Ammo', price = 15 },
		{ lvl = 1, name = 'ammo-rifle2', category = 'Ammo', price = 15 },
		{ lvl = 1, name = 'ammo-shotgun', category = 'Ammo', price = 15 },
		{ lvl = 1, name = 'ammo-50', category = 'Ammo', price = 15 },
		{ lvl = 1, name = 'WEAPON_KNIFE', category = 'Handheld', price = 5000 },
		{ lvl = 1, name = 'WEAPON_BAT', category = 'Handheld', price = 3500 },
		{ lvl = 1, name = 'WEAPON_FLASHLIGHT', category = 'Handheld', price = 400 },
		{ lvl = 1, name = 'WEAPON_PISTOL', category = 'Handgun', price = 25000, metadata = { registered = true }, license = 'weapon' },
		{ lvl = 2, name = 'WEAPON_APPISTOL', category = 'Handgun', price = 10000, metadata = { registered = true }, license = 'weapon' },
		{ lvl = 2, name = 'WEAPON_BZGAS', category = 'Throwable', price = 5000, metadata = { registered = true }, license = 'weapon' },
		{ lvl = 2, name = 'WEAPON_COMBATPDW', category = 'Machine Guns', price = 18000, metadata = { registered = true }, license = 'weapon' },

		-- Kyro Handguns
		{ lvl = 1, name = 'WEAPON_1911', category = 'Handgun', price = 28000, metadata = { registered = true }, license = 'weapon' },

		-- Kyro Revolvers
		{ lvl = 2, name = 'WEAPON_PYTHON', category = 'Handgun', price = 40000, metadata = { registered = true }, license = 'weapon' },

		-- Kyro Shotguns

		-- Kyro V5 Glocks (Legal)

		-- Kyro V6 Glocks (Legal)

		-- Kyro V5 Pistols (Legal)

		-- Kyro V5 Shotguns (Legal)
		{ lvl = 2, name = 'WEAPON_M500', category = 'Shotgun', price = 48000, metadata = { registered = true }, license = 'weapon' },

		-- Equipment
		{ lvl = 1, name = 'armour', category = 'Equipment', price = 5000 },
		{ lvl = 1, name = 'parachute', category = 'Equipment', price = 10000 },
		{ lvl = 1, name = 'binoculars', category = 'Equipment', price = 300 },
		{ lvl = 1, name = 'repair_kit', category = 'Equipment', price = 300 },

		-- Tints
		{ lvl = 1, name = 'greentint', category = 'Tints', price = 5000 },
		{ lvl = 1, name = 'goldtint', category = 'Tints', price = 6000 },
		{ lvl = 1, name = 'pinktint', category = 'Tints', price = 7000 },
		{ lvl = 1, name = 'armytint', category = 'Tints', price = 8000 },
		{ lvl = 1, name = 'lspdtint', category = 'Tints', price = 9000 },
		{ lvl = 1, name = 'orangetint', category = 'Tints', price = 10000 },
		{ lvl = 1, name = 'platinumtint', category = 'Tints', price = 11000 },

		-- Attachments (legal, registered weapons only)
		{ lvl = 1, name = 'at_flashlight', category = 'Attachment', price = 2000 },
		{ lvl = 1, name = 'at_suppressor_light', category = 'Attachment', price = 8000, license = 'weapon' },
		{ lvl = 1, name = 'at_compensator', category = 'Attachment', price = 2000 },
		{ lvl = 1, name = 'at_scope_small', category = 'Attachment', price = 2500 },
		{ lvl = 1, name = 'at_scope_medium', category = 'Attachment', price = 3500 },
		{ lvl = 1, name = 'at_clip_extended_pistol', category = 'Attachment', price = 2000 },
		{ lvl = 1, name = 'at_clip_extended_shotgun', category = 'Attachment', price = 2500 },

		-- Attachments (legal, registered weapons only)
	},

	-- VehicleShop REMOVED - Too many invalid items (1268 items not in inventory)

	BlackMarketArms = {
		-- Underground Tablets (backup if lost from starter items)
		-- FMRP: Crafting Blueprints (weapons)
		{ lvl = 1, name = 'blueprint', price = 8000, category = 'Blueprints', currency = 'black_money', metadata = { type = 'weapons', description = 'Weapons Crafting Blueprint' } },

		{ lvl = 1, name = 'heistpack_tablet', price = 500, category = 'Electronics', currency = 'black_money' },
		{ lvl = 1, name = 'illegal_tablet', price = 500, category = 'Electronics', currency = 'black_money' },

		-- Ammo
		{ lvl = 1, name = 'ammo-9', price = 25, category = 'Ammo', currency = 'black_money' },
		{ lvl = 1, name = 'ammo-45', price = 25, category = 'Ammo', currency = 'black_money' },
		{ lvl = 1, name = 'ammo-rifle', price = 25, category = 'Ammo', currency = 'black_money' },
		{ lvl = 1, name = 'ammo-rifle2', price = 25, category = 'Ammo', currency = 'black_money' },
		{ lvl = 1, name = 'ammo-shotgun', price = 25, category = 'Ammo', currency = 'black_money' },
		{ lvl = 1, name = 'ammo-50', price = 30, category = 'Ammo', currency = 'black_money' },
		{ lvl = 1, name = 'ammo-grenade', price = 500, category = 'Ammo', currency = 'black_money' },

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

		-- Kyro Pistols (Unregistered)

		-- Kyro SMGs

		-- Kyro Assault Rifles
		{ lvl = 1, name = 'WEAPON_AK47', price = 90000, category = 'Weapon', currency = 'black_money', stock = 8 },

		-- Kyro V5 Glocks (Switches)
		{ lvl = 1, name = 'WEAPON_MIDASGLOCK', price = 75000, category = 'Weapon', currency = 'black_money', stock = 5 },

		-- Kyro V6 Glocks (Switches/Black Market)

		-- Kyro V5 SMGs
		{ lvl = 1, name = 'WEAPON_KRISSVECTOR', price = 85000, category = 'Weapon', currency = 'black_money', stock = 6 },

		-- Kyro V5 Assault Rifles

		-- Kyro Shotguns
		{ lvl = 1, name = 'WEAPON_AA12', price = 120000, category = 'Weapon', currency = 'black_money', stock = 5 },

		-- Kyro LMG
		{ lvl = 1, name = 'WEAPON_M249', price = 150000, category = 'Weapon', currency = 'black_money', stock = 3 },

		-- Kyro Grenade Launcher

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
		{ lvl = 1, name = 'at_clip_drum_pistol', price = 3500, category = 'Attachment', currency = 'black_money', stock = 8 },
		{ lvl = 1, name = 'at_clip_100_pistol', price = 6000, category = 'Attachment', currency = 'black_money', stock = 5 },
		{ lvl = 1, name = 'at_clip_clear', price = 2500, category = 'Attachment', currency = 'black_money', stock = 10 },
		{ lvl = 1, name = 'at_clip_drum_rifle', price = 3500, category = 'Attachment', currency = 'black_money', stock = 8 },
		{ lvl = 1, name = 'at_scope_advanced', price = 5000, category = 'Attachment', currency = 'black_money', stock = 5 },
		{ lvl = 1, name = 'at_scope_nv', price = 8000, category = 'Attachment', currency = 'black_money', stock = 3 },
		{ lvl = 1, name = 'at_scope_thermal', price = 10000, category = 'Attachment', currency = 'black_money', stock = 3 },
		{ lvl = 1, name = 'at_clip_extended_mg', price = 2000, category = 'Attachment', currency = 'black_money', stock = 8 },
		{ lvl = 1, name = 'at_clip_extended_sniper', price = 2000, category = 'Attachment', currency = 'black_money', stock = 8 },
		{ lvl = 1, name = 'at_barrel', price = 2000, category = 'Attachment', currency = 'black_money', stock = 8 },

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
		{ lvl = 1, name = 'headbag', price = 3500, category = 'Goods', currency = 'black_money', stock = 3 },
	},
	
	
	LiquorStore = { -- expanded 2026-02-22
		-- Beers
		{ lvl = 1, name = 'beer', category = 'Beer', price = 80 },
		{ lvl = 1, name = 'am_beer', category = 'Beer', price = 85 },
		{ lvl = 1, name = 'piswasser', category = 'Beer', price = 75 },
		{ lvl = 1, name = 'duscbe_gold', category = 'Beer', price = 80 },
		{ lvl = 1, name = 'logger', category = 'Beer', price = 75 },

		-- Spirits
		{ lvl = 1, name = 'vodka', category = 'Spirits', price = 150 },
		{ lvl = 1, name = 'whiskey', category = 'Spirits', price = 180 },
		{ lvl = 1, name = 'rum', category = 'Spirits', price = 160 },
		{ lvl = 1, name = 'rhum', category = 'Spirits', price = 165 },
		{ lvl = 1, name = 'ragga_rum', category = 'Spirits', price = 170 },
		{ lvl = 1, name = 'cherenkov', category = 'Spirits', price = 160 },
		{ lvl = 1, name = 'sake', category = 'Spirits', price = 140 },

		-- Wine
		{ lvl = 1, name = 'wine', category = 'Wine', price = 200 },
		{ lvl = 1, name = 'chinese_rice_wine', category = 'Wine', price = 180 },

		-- Cocktails & Mixed Drinks
		{ lvl = 1, name = 'mojito', category = 'Cocktails', price = 120 },
		{ lvl = 1, name = 'pina_colada', category = 'Cocktails', price = 130 },
		{ lvl = 1, name = 'blue_lagoon', category = 'Cocktails', price = 125 },
		{ lvl = 1, name = 'caipirinha', category = 'Cocktails', price = 120 },
		{ lvl = 1, name = 'mai_tai', category = 'Cocktails', price = 135 },
		{ lvl = 1, name = 'san_francisco', category = 'Cocktails', price = 125 },

		-- Non-Alcoholic
		{ lvl = 1, name = 'ramune_original', category = 'Mixers', price = 60 },
		{ lvl = 1, name = 'sprite', category = 'Mixers', price = 40 },

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

		-- Kyro Police Weapons

		{ lvl = 2, name = 'radio', category = 'handheld', price = 100, metadata = { description = 'ten four rubber ducky' } },
		{ lvl = 2, name = 'armour', category = 'Tools', price = 100, metadata = { description = 'precautions and such' } },
		{ lvl = 2, name = 'uvlight', category = 'handheld', price = 100, metadata = { description = 'I heard if you point this at R Kelly he bursts into flames' } },

		-- Security Equipment
		{ lvl = 1, name = 'metal_wand', category = 'Security Equipment', price = 500 },

		-- PD Attachments
		{ lvl = 1, name = 'at_flashlight', category = 'Attachment', price = 50 },
		{ lvl = 1, name = 'at_suppressor_light', category = 'Attachment', price = 100 },
		{ lvl = 1, name = 'at_suppressor_heavy', category = 'Attachment', price = 150 },
		{ lvl = 1, name = 'at_compensator', category = 'Attachment', price = 50 },
		{ lvl = 1, name = 'at_grip', category = 'Attachment', price = 50 },
		{ lvl = 1, name = 'at_scope_small', category = 'Attachment', price = 50 },
		{ lvl = 1, name = 'at_scope_medium', category = 'Attachment', price = 75 },
		{ lvl = 1, name = 'at_scope_advanced', category = 'Attachment', price = 100 },
		{ lvl = 1, name = 'at_scope_nv', category = 'Attachment', price = 200 },
		{ lvl = 1, name = 'at_scope_thermal', category = 'Attachment', price = 250 },
		{ lvl = 1, name = 'at_clip_extended_pistol', category = 'Attachment', price = 50 },
		{ lvl = 1, name = 'at_clip_extended_rifle', category = 'Attachment', price = 50 },
		{ lvl = 1, name = 'at_clip_extended_shotgun', category = 'Attachment', price = 50 },
		{ lvl = 1, name = 'at_clip_extended_sniper', category = 'Attachment', price = 75 },

		-- PD Attachments
	},

	MechanicSupply = {
		-- Servicing Items
		-- FMRP: Crafting Materials
		{ lvl = 1, name = 'rubber', price = 20, category = 'Supplies' },
		{ lvl = 1, name = 'plastic', price = 15, category = 'Supplies' },

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

	['Balls8'] = { -- 8Balls (expanded 2026-02-22)
		-- Drinks
		{ lvl = 1, name = 'sprite', category = 'Drinks', price = 1500 },
		{ lvl = 1, name = 'grapejuice', category = 'Drinks', price = 3500 },
		{ lvl = 1, name = 'cocacola', category = 'Drinks', price = 60 },
		{ lvl = 1, name = 'water', category = 'Drinks', price = 20 },

		-- Beer & Spirits
		{ lvl = 1, name = 'beer', category = 'Beer & Spirits', price = 100 },
		{ lvl = 1, name = 'piswasser', category = 'Beer & Spirits', price = 100 },
		{ lvl = 1, name = 'whiskey', category = 'Beer & Spirits', price = 200 },
		{ lvl = 1, name = 'vodka', category = 'Beer & Spirits', price = 175 },
		{ lvl = 1, name = 'rum', category = 'Beer & Spirits', price = 175 },

		-- Cocktails
		{ lvl = 1, name = 'mojito', category = 'Cocktails', price = 150 },
		{ lvl = 1, name = 'pina_colada', category = 'Cocktails', price = 160 },

		-- Bar Snacks
		{ lvl = 1, name = 'bar_beans', category = 'Snacks', price = 80 },
		{ lvl = 1, name = 'bar_nuts', category = 'Snacks', price = 80 },
	},

	-- ClothingShop REMOVED - Too many invalid items (392 items not in inventory)

	YouTool = { -- expanded 2026-02-22
		-- Tools
		-- FMRP: Crafting Raw Materials
		{ lvl = 1, name = 'plastic', price = 15, category = 'Crafting Materials' },
		{ lvl = 1, name = 'rubber', price = 25, category = 'Crafting Materials' },
		{ lvl = 1, name = 'glass', price = 20, category = 'Crafting Materials' },

		-- FMRP: Crafting Blueprints (tool/mechanic)
		{ lvl = 1, name = 'blueprint', price = 750, category = 'Blueprints', metadata = { type = 'tools', description = 'Tool Crafting Blueprint' } },
		{ lvl = 1, name = 'blueprint', price = 2500, category = 'Blueprints', metadata = { type = 'mechanic', description = 'Mechanic Crafting Blueprint' } },

		{ lvl = 1, name = 'lockpick', price = 200, category = 'Tools' },
		{ lvl = 1, name = 'WEAPON_WRENCH', price = 250, category = 'Handheld', metadata = { registered = false } },
		{ lvl = 1, name = 'WEAPON_HAMMER', price = 250, category = 'Handheld', metadata = { registered = false } },
		{ lvl = 1, name = 'screwdriverset', price = 350, category = 'Tools' },
		{ lvl = 1, name = 'crowbar', price = 150, category = 'Handheld', metadata = { registered = false } },

		-- Gadgets
		{ lvl = 1, name = 'phone', price = 850, category = 'Gadgets' },
		{ lvl = 1, name = 'radio', price = 250, category = 'Gadgets' },
		{ lvl = 1, name = 'binoculars', price = 50, category = 'Gadgets' },
		{ lvl = 1, name = 'ghostcam', price = 500, category = 'Gadgets' },
		{ lvl = 1, name = 'skateboard', price = 150, category = 'Gadgets' },

		-- Computer Parts
		{ lvl = 1, name = 'graphics_card', price = 1500, category = 'Computer Parts' },
		{ lvl = 1, name = 'ram_stick', price = 800, category = 'Computer Parts' },
		{ lvl = 1, name = 'processor', price = 2000, category = 'Computer Parts' },
		{ lvl = 1, name = 'power_supply', price = 1500, category = 'Computer Parts' },
		{ lvl = 1, name = 'motherboard', price = 2500, category = 'Computer Parts' },
		{ lvl = 1, name = 'thermal_paste', price = 300, category = 'Computer Parts' },

		-- Miscellaneous
		{ lvl = 1, name = 'firework1', price = 50, category = 'Miscellaneous' },
		{ lvl = 1, name = 'firework2', price = 50, category = 'Miscellaneous' },
		{ lvl = 1, name = 'firework3', price = 50, category = 'Miscellaneous' },
		{ lvl = 1, name = 'firework4', price = 50, category = 'Miscellaneous' },

		-- Advanced Tools
		{ lvl = 1, name = 'advancedrepairkit', price = 500, category = 'Advanced Tools' },
		{ lvl = 1, name = 'big_drill', price = 600, category = 'Advanced Tools' },
		{ lvl = 1, name = 'drill', price = 350, category = 'Advanced Tools' },
		{ lvl = 1, name = 'cutter', price = 150, category = 'Advanced Tools' },
		{ lvl = 1, name = 'rope', price = 50, category = 'Advanced Tools' },
		{ lvl = 1, name = 'kq_tow_rope', price = 350, category = 'Advanced Tools' },
		{ lvl = 1, name = 'kq_winch', price = 850, category = 'Advanced Tools' },
		{ lvl = 1, name = 'blowtorch', price = 2500, category = 'Advanced Tools' },
		{ lvl = 1, name = 'gold_pan', price = 500, category = 'Advanced Tools' },
		{ lvl = 1, name = 'watertank', price = 1500, category = 'Advanced Tools' },
	},
	HuntingSupply = { -- expanded 2026-02-22
		-- Weapons & Ammo
		{ lvl = 1, name = 'WEAPON_SNIPERRIFLE', category = 'Weapons', price = 1000 },
		{ lvl = 1, name = 'ammo-sniper', category = 'Ammo', price = 10 },
		{ lvl = 1, name = 'WEAPON_KNIFE', category = 'Weapons', price = 500 },
		{ lvl = 1, name = 'WEAPON_FLASHLIGHT', category = 'Gear', price = 250 },

		-- Gear & Supplies
		{ lvl = 1, name = 'hunting_stove', category = 'Gear', price = 500 },
		{ lvl = 1, name = 'parachute', category = 'Gear', price = 6000 },

		-- Provisions
		{ lvl = 1, name = 'sandwich', category = 'Provisions', price = 30 },
		{ lvl = 1, name = 'bandage', category = 'Provisions', price = 100 },
		{ lvl = 1, name = 'lighter', category = 'Provisions', price = 20 },
	},

	UpnAtom = {
		-- Food Items
		{ lvl = 1, name = 'the_bleeder_burger', category = 'Burgers', price = 160 },
		{ lvl = 1, name = 'heart_stopper_burger', category = 'Burgers', price = 185 },
		{ lvl = 1, name = 'meat_free_burger', category = 'Burgers', price = 130 },
		{ lvl = 1, name = 'money_shot_burger', category = 'Burgers', price = 210 },
		{ lvl = 1, name = 'fingle_burger', category = 'Burgers', price = 190 },
		{ lvl = 1, name = 'sandwiches', category = 'Food', price = 110 },
		{ lvl = 1, name = 'fries_burgershot', category = 'Sides', price = 65 },
		{ lvl = 1, name = 'mustard', category = 'Sides', price = 15 },
		{ lvl = 1, name = 'chocolate_donut', category = 'Desserts', price = 80 },
		{ lvl = 1, name = 'classic_donut', category = 'Desserts', price = 75 },

		-- Drink Items
		{ lvl = 1, name = 'ecola', category = 'Drinks', price = 55 },
		{ lvl = 1, name = 'sprunk', category = 'Drinks', price = 55 },
		{ lvl = 1, name = 'drang_o_tang', category = 'Drinks', price = 65 },
		{ lvl = 1, name = 'sludgie_ice_blue', category = 'Frozen Drinks', price = 85 },
		{ lvl = 1, name = 'sludgie_ice_green', category = 'Frozen Drinks', price = 85 },
		{ lvl = 1, name = 'coffee', category = 'Hot Drinks', price = 45 },
	},

	Burgershot = { -- expanded 2026-02-22
		-- Food Items

		-- Drink Items
		{ lvl = 1, name = 'ecola_light', category = 'Drinks', price = 50 },
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
		{ lvl = 1, name = 'am_beer', category = 'Beer', price = 65 },
		{ lvl = 1, name = 'duscbe_gold', category = 'Beer', price = 75 },
		{ lvl = 1, name = 'logger', category = 'Beer', price = 70 },
		{ lvl = 1, name = 'ragga_rum', category = 'Spirits', price = 100 },
		{ lvl = 1, name = 'cherenkov', category = 'Spirits', price = 110 },
	},

	Pearls = {
		-- Food Items
		{ lvl = 1, name = 'chocolate_ice_cream', category = 'Desserts', price = 110 },
		{ lvl = 1, name = 'vanilla_ice_cream', category = 'Desserts', price = 110 },

		-- Coffee & Hot Drinks
		{ lvl = 1, name = 'chocolate_mocha', category = 'Coffee', price = 100 },

		-- Alcoholic Drinks

		-- Soft Drinks
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

	KoiRestaurant = { -- expanded 2026-02-22
		-- Main Dishes
		{ lvl = 1, name = 'banhxeo', category = 'Main Dishes', price = 180 },
		{ lvl = 1, name = 'bunbonambo', category = 'Main Dishes', price = 190 },
		{ lvl = 1, name = 'rice_balls', category = 'Main Dishes', price = 80 },
		{ lvl = 1, name = 'warm_chicken_noodle', category = 'Main Dishes', price = 160 },

		-- Desserts
		{ lvl = 1, name = 'dorayaki_plate', category = 'Desserts', price = 120 },

		-- Tea & Hot Drinks
		{ lvl = 1, name = 'greentea', category = 'Tea', price = 70 },
		{ lvl = 1, name = 'gyokuro', category = 'Tea', price = 80 },
		{ lvl = 1, name = 'sweet_herbal_tea', category = 'Tea', price = 80 },
		{ lvl = 1, name = 'matcha_coffee', category = 'Hot Drinks', price = 100 },
		{ lvl = 1, name = 'hot_chocolate', category = 'Hot Drinks', price = 80 },

		-- Wine & Spirits
		{ lvl = 1, name = 'chinese_rice_wine', category = 'Wine', price = 180 },
		{ lvl = 1, name = 'sake', category = 'Wine', price = 140 },

		-- Soft Drinks
		{ lvl = 1, name = 'cocacola', category = 'Soft Drinks', price = 50 },
		{ lvl = 1, name = 'cocacola_clear', category = 'Soft Drinks', price = 55 },
		{ lvl = 1, name = 'fanta', category = 'Soft Drinks', price = 50 },
	},

	Tequilala = { -- expanded 2026-02-22
		-- Cocktails

		-- Beer
		{ lvl = 1, name = 'beer', category = 'Beer', price = 80 },

		-- Spirits
		{ lvl = 1, name = 'vodka', category = 'Spirits', price = 150 },
		{ lvl = 1, name = 'whiskey', category = 'Spirits', price = 180 },
		{ lvl = 1, name = 'rum', category = 'Spirits', price = 160 },
		{ lvl = 1, name = 'rhum', category = 'Spirits', price = 160 },
		{ lvl = 1, name = 'ragga_rum', category = 'Spirits', price = 170 },
		{ lvl = 1, name = 'cherenkov', category = 'Spirits', price = 160 },
		{ lvl = 1, name = 'wine', category = 'Spirits', price = 200 },

		-- Bar Snacks

		-- Soft Drinks
		{ lvl = 1, name = 'sprunk', category = 'Soft Drinks', price = 50 },
	},

	VanillaUnicorn = { -- expanded 2026-02-22
		-- Tropical Cocktails

		-- Bar Snacks

		-- Spirits

		-- Novelty
		{ lvl = 1, name = 'panties', category = 'Novelty', price = 50 },
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
	-----------------------------------------------------------------------
	-- Sewer MLO Shops (2026-02-20)
	-----------------------------------------------------------------------

	-- "The Rat's Nest" - Sewer entrance black market
	-- Mix of drugs, break-in tools, melee weapons, survival gear
	-- Prices slightly below surface black markets (risk discount for the sewer)
	SewerMarket = {
		-- Drugs & Substances
		-- FMRP: Crafting Blueprints (illegal/rare)
		{ lvl = 1, name = 'blueprint', price = 12000, category = 'Blueprints', currency = 'black_money', metadata = { type = 'explosives', description = 'Explosives Crafting Blueprint' } },
		{ lvl = 1, name = 'blueprint', price = 8000, category = 'Blueprints', currency = 'black_money', metadata = { type = 'jewelry', description = 'Jewelry Crafting Blueprint' } },
		{ lvl = 1, name = 'blueprint', price = 15000, category = 'Blueprints', currency = 'black_money', metadata = { type = 'gold', description = 'Gold Crafting Blueprint' } },
		{ lvl = 1, name = 'blueprint', price = 5000, category = 'Blueprints', currency = 'black_money', metadata = { type = 'pharmaceutical', description = 'Pharmaceutical Blueprint' } },
		{ lvl = 1, name = 'blueprint', price = 1500, category = 'Blueprints', currency = 'black_money', metadata = { type = 'medical', description = 'Medical Crafting Blueprint' } },

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

		-- Fine Spirits

		-- Coffee Service
		{ lvl = 1, name = 'irish', price = 500, category = 'Coffee' },
		{ lvl = 1, name = 'turkish_coffee', price = 400, category = 'Coffee' },
		{ lvl = 1, name = 'affogato', price = 350, category = 'Coffee' },
	},
	-- Locksmith Shop (not in sewer)
	-- Specialized lock & security tools at fair prices (regular money)
	LocksmithShop = {
		-- Core Locksmith Tools
		-- FMRP: Crafting Blueprints (lockpicking)
		{ lvl = 1, name = 'blueprint', price = 1000, category = 'Blueprints', metadata = { type = 'lockpicking', description = 'Lockpicking Crafting Blueprint' } },

		{ lvl = 1, name = 'big_drill', price = 900, category = 'Tools' },
		{ lvl = 1, name = 'cutter', price = 250, category = 'Tools' },
		{ lvl = 1, name = 'blowtorch', price = 3500, category = 'Tools' },
		{ lvl = 1, name = 'crowbar', price = 250, category = 'Tools' },

		-- Security & Access
		{ lvl = 1, name = 'gatecrack', price = 30000, category = 'Security', stock = 3 },
		{ lvl = 1, name = 'hack_usb', price = 12000, category = 'Security', stock = 5 },
		{ lvl = 1, name = 'trojan_usb', price = 10000, category = 'Security', stock = 5 },

		-- Misc
		{ lvl = 1, name = 'WEAPON_FLASHLIGHT', price = 300, category = 'Tools' },
	},

	-----------------------------------------------------------------------
	-- New Shops (2026-02-22) — Farm Supply, Meat Locker, Pet Shop, Tech Shop
	-----------------------------------------------------------------------

	TechShop = {
		-- Devices
		{ lvl = 1, name = 'phone', category = 'Devices', price = 800 },
		{ lvl = 1, name = 'radio', category = 'Devices', price = 800 },
		{ lvl = 1, name = 'binoculars', category = 'Devices', price = 200 },
		{ lvl = 1, name = 'laptop_h', category = 'Devices', price = 5000 },
		{ lvl = 1, name = 'ghostcam', category = 'Devices', price = 400 },

		-- Computer Components
		{ lvl = 1, name = 'graphics_card', category = 'Components', price = 1200 },
		{ lvl = 1, name = 'ram_stick', category = 'Components', price = 600 },
		{ lvl = 1, name = 'processor', category = 'Components', price = 1800 },
		{ lvl = 1, name = 'power_supply', category = 'Components', price = 1200 },
		{ lvl = 1, name = 'motherboard', category = 'Components', price = 2200 },
		{ lvl = 1, name = 'thermal_paste', category = 'Components', price = 250 },

		-- Accessories
		-- Speakers
		{ lvl = 1, name = 'low_speaker', category = 'Speakers', price = 1500 },
		{ lvl = 1, name = 'medium_speaker', category = 'Speakers', price = 4000 },
		{ lvl = 1, name = 'high_speaker', category = 'Speakers', price = 8000 },
		{ lvl = 1, name = 'dj_booth', category = 'Speakers', price = 10000 },
	},

	FarmSupply = {
		-- Fruits
		{ lvl = 1, name = 'apple', category = 'Fruits', price = 8 },
		{ lvl = 1, name = 'pear', category = 'Fruits', price = 8 },
		{ lvl = 1, name = 'cherry', category = 'Fruits', price = 6 },
		{ lvl = 1, name = 'peach', category = 'Fruits', price = 8 },
		{ lvl = 1, name = 'banana', category = 'Fruits', price = 6 },
		{ lvl = 1, name = 'orange', category = 'Fruits', price = 8 },
		{ lvl = 1, name = 'strawberry', category = 'Fruits', price = 6 },
		{ lvl = 1, name = 'blueberry', category = 'Fruits', price = 6 },
		{ lvl = 1, name = 'grape', category = 'Fruits', price = 6 },
		{ lvl = 1, name = 'kiwi', category = 'Fruits', price = 10 },
		{ lvl = 1, name = 'lemon', category = 'Fruits', price = 6 },
		{ lvl = 1, name = 'mango', category = 'Fruits', price = 12 },
		{ lvl = 1, name = 'watermelon', category = 'Fruits', price = 20 },

		-- Dairy & Baking
		{ lvl = 1, name = 'milk', category = 'Dairy & Baking', price = 10 },
		{ lvl = 1, name = 'dough', category = 'Dairy & Baking', price = 15 },
		{ lvl = 1, name = 'pizza_base', category = 'Dairy & Baking', price = 25 },

		-- Provisions
		{ lvl = 1, name = 'water', category = 'Provisions', price = 8 },
		{ lvl = 1, name = 'sandwich', category = 'Provisions', price = 25 },

		-- Equipment
		{ lvl = 1, name = 'fuelcan', category = 'Equipment', price = 300 },
		{ lvl = 1, name = 'generator', category = 'Equipment', price = 3000 },
		{ lvl = 1, name = 'gold_pan', category = 'Equipment', price = 500 },
		{ lvl = 1, name = 'hunting_stove', category = 'Equipment', price = 400 },
		{ lvl = 1, name = 'watertank', category = 'Equipment', price = 1500 },
	},

	MeatLocker = {
		-- Raw Meats (markup over butcherjob output value)
		{ lvl = 1, name = 'raw_meat', category = 'Raw Meats', price = 120 },
		{ lvl = 1, name = 'raw_chicken', category = 'Raw Meats', price = 100 },
		{ lvl = 1, name = 'plucked_chicken', category = 'Raw Meats', price = 110 },

		-- Processed Meats
		{ lvl = 1, name = 'processed_meat', category = 'Processed', price = 180 },
		{ lvl = 1, name = 'ground_beef', category = 'Processed', price = 150 },
		{ lvl = 1, name = 'gutted_chicken', category = 'Processed', price = 130 },
		{ lvl = 1, name = 'chopped_chicken', category = 'Processed', price = 145 },

		-- Packaged (premium markup)
		{ lvl = 1, name = 'packed_groundbeef', category = 'Packaged', price = 200 },
		{ lvl = 1, name = 'packaged_chicken', category = 'Packaged', price = 190 },

		-- Ready to Eat
		{ lvl = 1, name = 'burger', category = 'Ready to Eat', price = 50 },

		-- Drinks
	},

	PetShop = {
		-- Dogs
		{ lvl = 1, name = 'murderface_husky', category = 'Dogs', price = 15000 },
		{ lvl = 1, name = 'murderface_shepherd', category = 'Dogs', price = 12000 },
		{ lvl = 1, name = 'murderface_rottweiler', category = 'Dogs', price = 10000 },
		{ lvl = 1, name = 'murderface_retriever', category = 'Dogs', price = 14000 },
		{ lvl = 1, name = 'murderface_chop', category = 'Dogs', price = 8000 },
		{ lvl = 1, name = 'murderface_westy', category = 'Dogs', price = 7000 },
		{ lvl = 1, name = 'murderface_pug', category = 'Dogs', price = 9000 },
		{ lvl = 1, name = 'murderface_poodle', category = 'Dogs', price = 11000 },

		-- Addon Breeds
		{ lvl = 1, name = 'murderface_doberman', category = 'Dogs', price = 8000 },
		{ lvl = 1, name = 'murderface_canecorso', category = 'Dogs', price = 7500 },
		{ lvl = 1, name = 'murderface_englishbulldog', category = 'Dogs', price = 6500 },
		{ lvl = 1, name = 'murderface_poodle2', category = 'Dogs', price = 4500 },
		{ lvl = 1, name = 'murderface_husky2', category = 'Dogs', price = 14000 },
		{ lvl = 1, name = 'murderface_retriever2', category = 'Dogs', price = 8000 },
		{ lvl = 1, name = 'murderface_shepherd2', category = 'Dogs', price = 9000 },
		{ lvl = 1, name = 'murderface_westy2', category = 'Dogs', price = 3000 },

		-- Cats
		{ lvl = 1, name = 'murderface_cat', category = 'Cats', price = 5000 },
		{ lvl = 1, name = 'murderface_sphynx', category = 'Cats', price = 9000 },

		-- Exotic Animals
		{ lvl = 1, name = 'murderface_panther', category = 'Exotic', price = 50000 },
		{ lvl = 1, name = 'murderface_mtlion', category = 'Exotic', price = 45000 },
		{ lvl = 1, name = 'murderface_coyote', category = 'Exotic', price = 25000 },
		{ lvl = 1, name = 'murderface_chimp', category = 'Exotic', price = 35000 },
		{ lvl = 1, name = 'murderface_rhesus', category = 'Exotic', price = 30000 },

		-- Small Animals
		{ lvl = 1, name = 'murderface_hen', category = 'Small Animals', price = 2000 },
		{ lvl = 1, name = 'murderface_rabbit', category = 'Small Animals', price = 3000 },

		-- Pet Supplies
		{ lvl = 1, name = 'murderface_food', category = 'Supplies', price = 50 },
		{ lvl = 1, name = 'murderface_firstaid', category = 'Supplies', price = 200 },
		{ lvl = 1, name = 'murderface_waterbottle', category = 'Supplies', price = 30 },
		{ lvl = 1, name = 'murderface_collar', category = 'Supplies', price = 75 },
		{ lvl = 1, name = 'murderface_nametag', category = 'Supplies', price = 50 },
		{ lvl = 1, name = 'murderface_groomingkit', category = 'Supplies', price = 150 },
		{ lvl = 1, name = 'murderface_doghouse', category = 'Supplies', price = 2500 },
		{ lvl = 1, name = 'murderface_leash', category = 'Supplies', price = 200 },
		{ lvl = 1, name = 'murderface_leash_2', category = 'Supplies', price = 250 },
		{ lvl = 1, name = 'murderface_leash_3', category = 'Supplies', price = 250 },
	},
	-----------------------------------------------------------------------
	-- Digi Den (2026-02-22) — Upstairs legal tech + Downstairs illegal tech
	-----------------------------------------------------------------------

	DigiDen = { -- Digi Den electronics shop
		-- Computer Parts
		-- FMRP: Crafting Blueprints (electronics)
		{ lvl = 1, name = 'blueprint', price = 3000, category = 'Blueprints', metadata = { type = 'electronics', description = 'Electronics Crafting Blueprint' } },

		{ lvl = 1, name = 'graphics_card', category = 'Computer Parts', price = 3500 },
		{ lvl = 1, name = 'ram_stick', category = 'Computer Parts', price = 800 },
		{ lvl = 1, name = 'processor', category = 'Computer Parts', price = 2500 },
		{ lvl = 1, name = 'power_supply', category = 'Computer Parts', price = 1200 },
		{ lvl = 1, name = 'motherboard', category = 'Computer Parts', price = 2000 },
		{ lvl = 1, name = 'thermal_paste', category = 'Computer Parts', price = 150 },

		-- Consumer Electronics
		{ lvl = 1, name = 'phone', category = 'Electronics', price = 500 },
		{ lvl = 1, name = 'radio', category = 'Electronics', price = 250 },
		{ lvl = 1, name = 'laptop', category = 'Electronics', price = 5000 },
		{ lvl = 1, name = 'monitor', category = 'Electronics', price = 3000 },
		{ lvl = 1, name = 'binoculars', category = 'Electronics', price = 400 },
		{ lvl = 1, name = 'electronickit', category = 'Electronics', price = 200 },

		-- Audio
		{ lvl = 1, name = 'low_speaker', category = 'Audio', price = 2000 },
		{ lvl = 1, name = 'medium_speaker', category = 'Audio', price = 5000 },
		{ lvl = 1, name = 'high_speaker', category = 'Audio', price = 10000 },
		{ lvl = 1, name = 'dj_booth', category = 'Audio', price = 25000 },
	},

	DigiDenBasement = {
		-- Hacking Devices
		{ lvl = 1, name = 'kq_hacker_usb', category = 'Hacking', price = 1500 },
		{ lvl = 1, name = 'virus', category = 'Hacking', price = 2500 },
		{ lvl = 1, name = 'blue_usb', category = 'Hacking', price = 800 },
		-- Computers
		{ lvl = 1, name = 'hack_laptop', category = 'Computers', price = 6000 },
		{ lvl = 1, name = 'fraud_laptop', category = 'Computers', price = 8000 },
		{ lvl = 1, name = 'fraud_printer', category = 'Computers', price = 10000 },
		-- Surveillance / Bypass
		{ lvl = 1, name = 'kq_radio_encoder', category = 'Surveillance', price = 3000 },
		{ lvl = 1, name = 'security_card_01', category = 'Bypass', price = 500 },
		-- Breaching
		{ lvl = 1, name = 'thermite', category = 'Breaching', price = 3000 },
		{ lvl = 1, name = 'kq_angle_grinder', category = 'Breaching', price = 4000 },
		{ lvl = 1, name = 'kq_airdrop_flare', category = 'Breaching', price = 1000 },
	},

	Hookies = { -- Hookies Bait & Seafood (updated 2026-03-10: lunar_fishing items)
		-- Fishing Rods (lunar_fishing: basic/graphite/titanium)
		{ lvl = 1, name = 'basic_rod',     category = 'Rods', price = 250 },
		{ lvl = 1, name = 'graphite_rod',  category = 'Rods', price = 750 },
		{ lvl = 1, name = 'titanium_rod',  category = 'Rods', price = 2000 },
		-- Bait (lunar_fishing: worms / artificial_bait)
		{ lvl = 1, name = 'worms',          category = 'Bait', price = 10 },
		{ lvl = 1, name = 'artificial_bait', category = 'Bait', price = 35 },
		-- Reels (used to craft upgraded rods)
		{ lvl = 1, name = 'skillreel', category = 'Reels', price = 300 },
		{ lvl = 1, name = 'proreel',   category = 'Reels', price = 1000 },
		-- Seafood & Food
		-- Drinks
		{ lvl = 1, name = 'cola', category = 'Drinks', price = 30 },
	},

	SeagullRaceway = { -- Seagull Raceway Pit Stop (2026-02-23)
		-- Repair & Maintenance
		{ lvl = 1, name = 'advancedrepairkit', category = 'Repair', price = 500 },
		-- Tires & Parts
		-- Performance
		-- Servicing
		-- Refreshments
		{ lvl = 1, name = 'ecola', category = 'Refreshments', price = 15 },
	},
	-----------------------------------------------------------------------
	-- Rick's Garage Lab (2026-03-10) - Chumash garage
	-- All items cost black_money - this ain't a licensed pharmacy
	-----------------------------------------------------------------------

	PortalLab = {
		-- Recreational (the fun stuff from Dimension C-137)
		{ lvl = 1, name = 'xanaxpack',       price = 800,  category = 'Recreational', currency = 'black_money' },

		-- Weed (standard interdimensional vegetation)
		{ lvl = 1, name = 'weed_wrap',       price = 20,   category = 'Weed',         currency = 'black_money' },

		-- Hard Stuff (Rick's private reserve)
		{ lvl = 1, name = 'meth_pipe',       price = 500,  category = 'Hard Stuff',   currency = 'black_money' },
		{ lvl = 1, name = 'meth_syringe',    price = 600,  category = 'Hard Stuff',   currency = 'black_money' },
		{ lvl = 1, name = 'meth_sharp',      price = 800,  category = 'Hard Stuff',   currency = 'black_money' },
		{ lvl = 1, name = 'meth_bag',        price = 1200, category = 'Hard Stuff',   currency = 'black_money' },
		{ lvl = 1, name = 'crack',           price = 600,  category = 'Hard Stuff',   currency = 'black_money' },
		{ lvl = 1, name = 'heroin',          price = 900,  category = 'Hard Stuff',   currency = 'black_money' },

		-- Lab Access (requires clearance from the Council of Ricks)
		{ lvl = 1, name = 'coke_access',     price = 5000, category = 'Lab Access',   currency = 'black_money', stock = 5 },
		{ lvl = 1, name = 'meth_access',     price = 5000, category = 'Lab Access',   currency = 'black_money', stock = 5 },
		{ lvl = 1, name = 'weed_access',     price = 5000, category = 'Lab Access',   currency = 'black_money', stock = 5 },
		{ lvl = 1, name = 'crack_kit',       price = 3000, category = 'Lab Access',   currency = 'black_money', stock = 10 },

		-- Lab Supplies (synthesis equipment, Morty sold separately)
		{ lvl = 1, name = 'plastic_bag',     price = 100,  category = 'Lab Supplies', currency = 'black_money' },
		{ lvl = 1, name = 'meth_glass',      price = 1500, category = 'Lab Supplies', currency = 'black_money' },
		{ lvl = 1, name = 'meth_emptysacid', price = 800,  category = 'Lab Supplies', currency = 'black_money' },
		{ lvl = 1, name = 'glue',            price = 200,  category = 'Lab Supplies', currency = 'black_money' },
	},

	-----------------------------------------------------------------------
	-- The Rusty Spoke (2026-03-10) - Trailer park biker bar, Grapeseed area
	-----------------------------------------------------------------------

	-----------------------------------------------------------------------
	-- Casino Bar (2026-03-10) - Second casino location
	-----------------------------------------------------------------------
	CasinoBar = {
		-- Signature Cocktails

		-- Premium Spirits

		-- Beer
		{ lvl = 1, name = 'am_beer',        price = 130, category = 'Beer' },

		-- Soft Drinks

		-- Bar Snacks
		{ lvl = 1, name = 'luxury_dinner',  price = 800, category = 'Snacks' },
	},

	BikerBar = {
		-- Beer (the cheap stuff, nothing fancy)
		{ lvl = 1, name = 'piswasser',     price = 75,  category = 'Beer' },
		{ lvl = 1, name = 'logger',        price = 75,  category = 'Beer' },
		{ lvl = 1, name = 'duscbe_gold',   price = 80,  category = 'Beer' },

		-- Spirits (whiskey and rum, that's it)

		-- Bar Grub
		{ lvl = 1, name = 'donut',         price = 25,  category = 'Bar Grub' },

		-- Tobacco
		{ lvl = 1, name = 'kq_tobacco',    price = 200, category = 'Tobacco' },

		-- Back Room (ask the bartender nicely)
	},
	-----------------------------------------------------------------------
	-- Alamo Isle Cafe (2026-03-10) - Island cafe/restaurant, Alamo Sea
	-----------------------------------------------------------------------
	AlamoIsle = {
		-- Food

		-- Coffee
		{ lvl = 1, name = 'cappuccino',    price = 80,  category = 'Coffee' },
		{ lvl = 1, name = 'espresso',      price = 60,  category = 'Coffee' },
		{ lvl = 1, name = 'latte',         price = 90,  category = 'Coffee' },

		-- Soft Drinks
		{ lvl = 1, name = 'drang_o_tang',  price = 20,  category = 'Soft Drinks' },

		-- Light Alcohol
	},

	-----------------------------------------------------------------------
	-- The Old House (2026-03-10) - Creepy black market, word of mouth
	-----------------------------------------------------------------------
	CreepyHouse = {
		-- Melee Weapons
		{ lvl = 1, name = 'WEAPON_HATCHET',       price = 600,  category = 'Weapons', currency = 'black_money' },
		{ lvl = 1, name = 'WEAPON_CERAMICPISTOL', price = 1800, category = 'Weapons', currency = 'black_money' },

		-- Drugs

		-- Tools

		-- Misc
	},
	-----------------------------------------------------------------------
	-- Cool Beans (2026-03-10) - Beachside cafe, pastries and coffee
	-----------------------------------------------------------------------
	CoolBeans = {
		-- Coffee
		{ lvl = 1, name = 'coffee',          price = 35,  category = 'Coffee' },

		-- Baked Goods
		{ lvl = 1, name = 'chocolate_donut', price = 35,  category = 'Baked Goods' },
		{ lvl = 1, name = 'classic_donut',   price = 30,  category = 'Baked Goods' },
		{ lvl = 1, name = 'toast',           price = 20,  category = 'Baked Goods' },

		-- Soft Drinks
	},
	-----------------------------------------------------------------------
	-- Truth Organic (2026-03-10) - Hippie juice bar & canned goods
	-----------------------------------------------------------------------
	TruthOrganic = {
		-- Fresh Produce

		-- Drinks
		{ lvl = 1, name = 'ecola_light',     price = 15,  category = 'Drinks' },

		-- Food
	},
	-----------------------------------------------------------------------
	-- Cyber Bar (2026-03-14) - Arcade cyber bar with secret underground nightclub
	-----------------------------------------------------------------------
	CyberBar = {
		-- Energy Drinks

		-- Beer

		-- Cocktails

		-- Spirits

		-- Snacks

		-- Gaming & Fun
		{ lvl = 1, name = 'glowsaber',     price = 600,  category = 'Gaming & Fun' },
		{ lvl = 1, name = 'skateboard',    price = 250,  category = 'Gaming & Fun' },
		{ lvl = 1, name = 'football',      price = 175,  category = 'Gaming & Fun' },
		{ lvl = 1, name = 'basketball',    price = 175,  category = 'Gaming & Fun' },
		{ lvl = 1, name = 'baseball',      price = 125,  category = 'Gaming & Fun' },

		-- Tech Gear
	},

	-----------------------------------------------------------------------
	-- Cyber Club (2026-03-14) - Secret underground nightclub, club drugs & party goods
	-----------------------------------------------------------------------
	CyberClub = {
		-- Club Drugs

		-- Smoke

		-- Party Drinks

		-- Fun Stuff
		{ lvl = 1, name = 'firework1',      price = 50,    category = 'Rave Gear', currency = 'black_money' },
		{ lvl = 1, name = 'firework2',      price = 50,    category = 'Rave Gear', currency = 'black_money' },
		{ lvl = 1, name = 'firework3',      price = 50,    category = 'Rave Gear', currency = 'black_money' },
		{ lvl = 1, name = 'firework4',      price = 50,    category = 'Rave Gear', currency = 'black_money' },
	},

	-----------------------------------------------------------------------
	-- Fight Medic (2026-03-13) - Underground boxing ring medical supplies
	-----------------------------------------------------------------------
	FightMedic = {
		-- Medical Supplies
		{ lvl = 1, name = 'medkit',          price = 350,  category = 'Medical' },
		{ lvl = 1, name = 'painkiller',      price = 120,  category = 'Medical' },
		{ lvl = 1, name = 'adrenaline',      price = 500,  category = 'Medical' },

		-- Refreshments
	},
	WhiteWidow = { -- White Widow dispensary (2026-03-14)
		-- Seeds
		{ lvl = 1, name = 'weed_white-widow_seed',  price = 250,  category = 'Seeds' },
		{ lvl = 1, name = 'weed_skunk_seed',         price = 250,  category = 'Seeds' },
		{ lvl = 1, name = 'weed_purple-haze_seed',   price = 250,  category = 'Seeds' },
		{ lvl = 1, name = 'weed_og-kush_seed',       price = 250,  category = 'Seeds' },
		{ lvl = 1, name = 'weed_amnesia_seed',        price = 250,  category = 'Seeds' },
		{ lvl = 1, name = 'weed_ak47_seed',           price = 250,  category = 'Seeds' },

		-- Smoking Accessories
		{ lvl = 1, name = 'bong',                     price = 500,  category = 'Accessories' },
		{ lvl = 1, name = 'weed_papers',              price = 15,   category = 'Accessories' },

		-- Pre-Rolled / Packaged

		-- Grow Supplies
		{ lvl = 1, name = 'empty_weed_bag',           price = 10,   category = 'Grow Supplies' },
		{ lvl = 1, name = 'weed_nutrition',            price = 100,  category = 'Grow Supplies' },
	},


	WhiteWidowSouth = { -- White Widow dispensary south location
		-- Seeds
		{ lvl = 1, name = 'weed_white-widow_seed',  price = 250,  category = 'Seeds' },
		{ lvl = 1, name = 'weed_skunk_seed',         price = 250,  category = 'Seeds' },
		{ lvl = 1, name = 'weed_purple-haze_seed',   price = 250,  category = 'Seeds' },
		{ lvl = 1, name = 'weed_og-kush_seed',       price = 250,  category = 'Seeds' },
		{ lvl = 1, name = 'weed_amnesia_seed',        price = 250,  category = 'Seeds' },
		{ lvl = 1, name = 'weed_ak47_seed',           price = 250,  category = 'Seeds' },

		-- Smoking Accessories
		{ lvl = 1, name = 'bong',                     price = 500,  category = 'Accessories' },
		{ lvl = 1, name = 'weed_papers',              price = 15,   category = 'Accessories' },

		-- Grow Supplies
		{ lvl = 1, name = 'empty_weed_bag',           price = 10,   category = 'Grow Supplies' },
		{ lvl = 1, name = 'weed_nutrition',            price = 100,  category = 'Grow Supplies' },
	},


	Pier76Lounge = { -- Pier 76 Car Club Lounge
		-- Premium Cocktails
		{ lvl = 1, name = 'mojito', category = 'Cocktails', price = 150 },
		{ lvl = 1, name = 'pina_colada', category = 'Cocktails', price = 150 },
		{ lvl = 1, name = 'blue_lagoon', category = 'Cocktails', price = 175 },
		{ lvl = 1, name = 'caipirinha', category = 'Cocktails', price = 160 },
		{ lvl = 1, name = 'mai_tai', category = 'Cocktails', price = 175 },
		{ lvl = 1, name = 'san_francisco', category = 'Cocktails', price = 150 },

		-- Top Shelf
		{ lvl = 1, name = 'luxury_whiskey', category = 'Top Shelf', price = 500 },
		{ lvl = 1, name = 'whiskey', category = 'Top Shelf', price = 200 },
		{ lvl = 1, name = 'vodka', category = 'Top Shelf', price = 175 },
		{ lvl = 1, name = 'wine', category = 'Top Shelf', price = 250 },
		{ lvl = 1, name = 'rum', category = 'Top Shelf', price = 175 },

		-- Lounge Bites
		{ lvl = 1, name = 'luxury_dinner', category = 'Lounge Bites', price = 800 },
		{ lvl = 1, name = 'sushi', category = 'Lounge Bites', price = 350 },
		{ lvl = 1, name = 'tiramisu', category = 'Lounge Bites', price = 200 },
		{ lvl = 1, name = 'strawberry_shortcake', category = 'Lounge Bites', price = 175 },

		-- Coffee
		{ lvl = 1, name = 'espresso', category = 'Coffee', price = 80 },
		{ lvl = 1, name = 'cappuccino', category = 'Coffee', price = 100 },
		{ lvl = 1, name = 'latte', category = 'Coffee', price = 100 },

		-- Smoke Lounge
		{ lvl = 1, name = 'weed_blunt', category = 'Smoke Lounge', price = 75 },
		{ lvl = 1, name = 'weed_joint', category = 'Smoke Lounge', price = 50 },
		{ lvl = 1, name = 'cigbox', category = 'Smoke Lounge', price = 400 },
		{ lvl = 1, name = 'cigarette', category = 'Smoke Lounge', price = 25 },
		{ lvl = 1, name = 'lighter', category = 'Smoke Lounge', price = 10 },
	},


	Pier76MechShop = { -- Pier 76 self-service mech shop
		-- Servicing
		{ lvl = 1, name = 'repair_kit', category = 'Servicing', price = 200 },
		{ lvl = 1, name = 'engine_oil', category = 'Servicing', price = 200 },
		{ lvl = 1, name = 'tyre_replacement', category = 'Servicing', price = 900 },
		{ lvl = 1, name = 'clutch_replacement', category = 'Servicing', price = 1500 },
		{ lvl = 1, name = 'air_filter', category = 'Servicing', price = 50 },
		{ lvl = 1, name = 'spark_plug', category = 'Servicing', price = 150 },
		{ lvl = 1, name = 'suspension_parts', category = 'Servicing', price = 1500 },
		{ lvl = 1, name = 'brakepad_replacement', category = 'Servicing', price = 350 },

		-- Performance
		{ lvl = 1, name = 'cleaning_kit', category = 'Performance', price = 100 },
		{ lvl = 1, name = 'stancing_kit', category = 'Performance', price = 500 },
		{ lvl = 1, name = 'lighting_controller', category = 'Performance', price = 200 },

		-- EV
		{ lvl = 1, name = 'ev_motor', category = 'EV Parts', price = 7000 },
		{ lvl = 1, name = 'ev_battery', category = 'EV Parts', price = 9500 },
		{ lvl = 1, name = 'ev_coolant', category = 'EV Parts', price = 200 },
	},



	LeapFrogCafe = { -- Leap Frog Cafe - cute bakery & tea house
		-- Teas
		{ lvl = 1, name = 'greentea', category = 'Teas', price = 60 },
		{ lvl = 1, name = 'jasminetea', category = 'Teas', price = 65 },
		{ lvl = 1, name = 'minttea', category = 'Teas', price = 60 },
		{ lvl = 1, name = 'sweet_herbal_tea', category = 'Teas', price = 70 },
		{ lvl = 1, name = 'gyokuro', category = 'Teas', price = 80 },
		{ lvl = 1, name = 'booba_milk_tea_2', category = 'Teas', price = 90 },

		-- Coffee & Drinks
		{ lvl = 1, name = 'matcha_coffee', category = 'Drinks', price = 85 },
		{ lvl = 1, name = 'latte', category = 'Drinks', price = 75 },
		{ lvl = 1, name = 'cappuccino', category = 'Drinks', price = 75 },
		{ lvl = 1, name = 'lovely_hot_chocolate', category = 'Drinks', price = 80 },
		{ lvl = 1, name = 'ramune_original', category = 'Drinks', price = 50 },
		{ lvl = 1, name = 'juice', category = 'Drinks', price = 45 },
		{ lvl = 1, name = 'grapejuice', category = 'Drinks', price = 50 },

		-- Cakes & Sweets
		{ lvl = 1, name = 'strawberry_shortcake', category = 'Cakes', price = 120 },
		{ lvl = 1, name = 'oxygen_cake', category = 'Cakes', price = 130 },
		{ lvl = 1, name = 'japanese_cheesecake', category = 'Cakes', price = 140 },
		{ lvl = 1, name = 'tiramisu', category = 'Cakes', price = 135 },
		{ lvl = 1, name = 'apple_pie', category = 'Cakes', price = 110 },

		-- Baked Goods
		{ lvl = 1, name = 'blackberry_muffin', category = 'Baked Goods', price = 55 },
		{ lvl = 1, name = 'chocolate_muffin', category = 'Baked Goods', price = 55 },
		{ lvl = 1, name = 'lychee_muffin', category = 'Baked Goods', price = 60 },
		{ lvl = 1, name = 'oreo_muffin', category = 'Baked Goods', price = 60 },
		{ lvl = 1, name = 'gingerkitty_cookie', category = 'Baked Goods', price = 45 },
		{ lvl = 1, name = 'cookies', category = 'Baked Goods', price = 40 },
		{ lvl = 1, name = 'doki_doki_pancakes', category = 'Baked Goods', price = 95 },

		-- Frozen Treats
		{ lvl = 1, name = 'meowchi_mochi_ice_cream', category = 'Frozen Treats', price = 80 },
		{ lvl = 1, name = 'chocolate_and_vanilla_gelato_ice_cream', category = 'Frozen Treats', price = 75 },
		{ lvl = 1, name = 'chocolate_ice_cream', category = 'Frozen Treats', price = 65 },
		{ lvl = 1, name = 'vanilla_ice_cream', category = 'Frozen Treats', price = 65 },

		-- Cupcakes
		{ lvl = 1, name = 'ballbarry_cupcake', category = 'Cupcakes', price = 50 },
		{ lvl = 1, name = 'dragos_fire_cupcake', category = 'Cupcakes', price = 55 },
	},

	WipeoutPitStop = { -- Wipeout gauntlet pit stop
		-- Hydration
		{ lvl = 1, name = 'water', category = 'Hydration', price = 50 },
		{ lvl = 1, name = 'sprunk', category = 'Hydration', price = 75 },
		{ lvl = 1, name = 'energy_drink', category = 'Hydration', price = 150 },

		-- Food
		{ lvl = 1, name = 'burger', category = 'Food', price = 100 },
		{ lvl = 1, name = 'protein', category = 'Food', price = 200 },

		-- Medical
		{ lvl = 1, name = 'bandage', category = 'Medical', price = 200 },
		{ lvl = 1, name = 'medkit', category = 'Medical', price = 500 },
		{ lvl = 1, name = 'painkiller', category = 'Medical', price = 300 },
		{ lvl = 1, name = 'adrenaline', category = 'Medical', price = 750 },

		-- Gear
		{ lvl = 1, name = 'armour', category = 'Gear', price = 5000 },
		{ lvl = 1, name = 'repair_kit', category = 'Gear', price = 300 },
	},

}
