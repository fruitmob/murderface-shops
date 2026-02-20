# murderface-shops (Qbox + ox Fork)

**Free, open-source advanced shop system for FiveM** — drop in, configure, sell.

Converted and enhanced for the **Qbox + ox_lib + ox_inventory + ox_target** stack. Gabz MLO compatible, MySQL caching, SQL injection fixes, and custom shop support.

> Forked from [renzuzu/renzu_shops](https://github.com/renzuzu/renzu_shops) -- original by renzuzu

---

## Features

- **Every shop type** — 24/7, Ammunation, Liquor, Mechanic, Black Market, Vehicle, Job, and Food Trucks
- **Player-owned shops** — Buy locations, manage inventory/pricing, hire employees, track profits
- **Gabz MLO support** — Works with Gabz 24/7, Ammunation, mechanic shops, and other MLO interiors
- **DRC item packs** — Bean Machine coffee shop with 29 DRC items and vendor ped
- **Item customization** — Toppings, variants, weapon attachments via metadata
- **MySQL caching** — 5-minute cache cuts database queries by ~95%
- **Security fixes** — SQL injection protection, transaction locking, input sanitization
- **Store robbery** — Rob cashiers with skill checks (30min cooldown)
- **Movable shops** — Food trucks (Chihuahua Hot Dogs, Beefy Bills, Attack A Taco)
- **Admin panel** — Full control over shops, stock, ownership, and finances
- **Auto-setup** — Tables auto-create on first start, no SQL import needed

## Quick Start

**1.** Download and extract to your resources as `murderface-shops`

**2.** Add to `server.cfg`:
```cfg
ensure murderface-shops
```

**3.** Restart server — walk to any 24/7, press target key, buy something. Done.

All shop items must exist in `ox_inventory/data/items.lua`. Check `config/storeitems.lua` if you see missing-item warnings in console.

---

## Configuration

Everything lives in the `config/` folder:

| File | What it controls |
|------|-----------------|
| `config/init.lua` | Framework, target mode, stock defaults |
| `config/storeitems.lua` | Items and prices for each shop type |
| `config/defaultshops.lua` | Shop locations, blips, names |
| `config/ownedshops/` | Purchasable shop locations and pricing |
| `config/jobshops/` | Job-restricted shops (police armory, EMS, etc.) |
| `config/movableshops.lua` | Food truck configuration |
| `data/item-customisation.lua` | Item variants, toppings, effects |

### Basic Settings

```lua
-- config/init.lua
shared.framework = 'QBX'              -- Framework (QBX or ESX)
shared.target = true                  -- Use ox_target (false = markers)
shared.oxShops = false                -- Use ox_inventory shop UI instead
shared.allowplayercreateitem = false  -- Let players add custom items
shared.defaultStock = 100             -- Starting stock for new shops
```

### Adding Shop Locations

```lua
-- config/defaultshops.lua
shared.Coords = {
    General = {
        [1] = {
            coord = vector4(25.74, -1346.74, 29.49, 271.69),
            name = '24/7 Supermarket',
            blip = { sprite = 52, color = 2, scale = 0.6 }
        }
    }
}
```

### Shop Items

```lua
-- config/storeitems.lua
General = {
    { lvl = 1, name = 'water', category = 'Food', price = 50 },
    { lvl = 1, name = 'burger', category = 'Food', price = 150 },
}
```

- `lvl` — Shop level required (1 = always available, 2+ = owned shops only)
- `name` — Must match an item in `ox_inventory/data/items.lua`
- `category` — Display grouping (Food, Medical, Tools, etc.)
- `price` — Base price in dollars

---

## Admin Commands

| Command | Description |
|---------|------------|
| `/stores` | Open admin shop management panel |
| `/addstock General 1 100` | Add 100 of all items to General #1 |
| `/addstock Ammunation 2 50 pistol` | Add 50 pistols to Ammunation #2 |

---

## Dependencies

| Resource | Required |
|----------|----------|
| qbx_core | Yes |
| ox_lib | Yes |
| ox_inventory | Yes |
| oxmysql | Yes |
| ox_target | Optional (can use markers) |

If you're running Qbox with the ox stack, you already have everything you need.

---

## What Changed From the Original

- **Qbox native** — Full QBX integration with proper player wrapper and money handling
- **MySQL caching** — 5-minute cache, moved GlobalState data to MySQL (was hitting 16KB limit)
- **Security** — SQL injection protection, transaction locking, input sanitization
- **Bug fixes** — All Lua syntax errors (`+=`, `-=`), shop UI closing bug, race conditions
- **Gabz + DRC** — MLO compatibility and Bean Machine coffee shop with 29 DRC items
- **Error handling** — Debug logging, item validation against ox_inventory, automatic recovery

## Troubleshooting

**Items not appearing in shop?**
Check they exist in `ox_inventory/data/items.lua`. Console will warn you about missing items.

**Shop UI closes immediately?**
Fixed in this version. If it persists, check for empty shop sections in `storeitems.lua`.

**Target not working?**
Set `shared.target = true` in `config/init.lua` for ox_target, or `false` for markers.

**Need to import SQL?**
No — tables auto-create on first start.

See [DEPLOYMENT.md](DEPLOYMENT.md) for full testing checklist and [CONFIGURATION.md](CONFIGURATION.md) for advanced options.

---

## Preview

![Store UI](https://user-images.githubusercontent.com/82306584/200500266-2028d8f3-bc95-4131-888f-0d07935f90be.png)

![Shop Management](https://user-images.githubusercontent.com/82306584/200500860-ab032c2a-5829-47f8-a4ce-eb9685117767.png)

![Food Truck](https://user-images.githubusercontent.com/82306584/200501834-de161c46-08ca-4065-9bfa-4094828dd05f.png)

## Credits

- **Original script**: [renzuzu](https://github.com/renzuzu) (original renzu_shops)
- **Qbox conversion & enhancements**: [FruitMob RP](https://github.com/fruitmob)

## License

GPL-3.0 — same as the original.
