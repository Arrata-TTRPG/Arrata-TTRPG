#import "../talent-cards.typ": *

#set page(paper: "a4", flipped: true, margin: 0pt)

// ── Page 1: Melee Weapons ───────────────────────────────────────────────────

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: (1fr, 1fr, 1fr, 1fr),

  weapon("Dagger", melee, "Blade", "B1", "1", "Physical", bonus: "+15%/Success over", effects: (
    "Ignores 15% armor damage reduction.",
  )),
  weapon("Shortsword", melee, "Blade", "B2", "2", "Physical", stat-mod: "Speed"),
  weapon(
    "Longsword",
    melee,
    "Blade",
    "B3",
    "3",
    "Physical",
    stat-mod: "Power",
    tags: (two-handed,),
    notes: ("May be used one-handed at -1 damage.",),
  ),
  weapon("Rapier", melee, "Blade", "B3", "2", "Physical", stat-mod: "Speed", bonus: "+20%/Success over"),

  weapon(
    "Staff",
    melee,
    "Polearms",
    "B1",
    "2",
    "Physical",
    tags: (two-handed,),
    notes: ("May be used one-handed at -1 damage.",),
  ),
  weapon("Mace", melee, "Blunt", "B2", "3", "Physical", stat-mod: "Power", bonus: "+5%/Success over", effects: (
    "Ignores 10% armor damage reduction.",
  )),
  weapon("Spear", melee, "Polearms", "B2", "3", "Physical", stat-mod: "Speed", bonus: "+10%/Success over"),
  weapon(
    "Halberd",
    melee,
    "Polearms",
    "B4",
    "3",
    "Physical",
    stat-mod: "Power",
    tags: (two-handed,),
    bonus: "+10%/Success over",
    effects: ("Ignores 20% damage armor reduction.",),
  ),

  weapon(
    "Greataxe",
    melee,
    "Axe",
    "B4",
    "4",
    "Physical",
    stat-mod: "Power",
    tags: (two-handed,),
    bonus: "+10%/Success over",
    effects: ("-1 Evasion", "+1 Advantage vs unarmored opponents."),
  ),
  weapon(
    "War Hammer",
    melee,
    "Blunt",
    "B3",
    "5",
    "Physical",
    stat-mod: "Power",
    tags: (two-handed,),
    bonus: "+5%/Success over",
    effects: ("-1 Evasion", "Ignores 25% armor damage reduction."),
  ),
  weapon("Whip", melee, "Blunt", "B2", "1", "Physical", stat-mod: "Speed", effects: (
    "Successful hits reduce target's AP by 1.",
  )),
  weapon("Chain Flail", melee, "Blunt", "B3", "2", "Physical", stat-mod: "Power", bonus: "+15%/Success over", effects: (
    "-1 Evasion",
    "Ignores 10% armor damage reduction.",
  )),

  weapon("Morningstar", melee, "Blunt", "B3", "4", "Physical", stat-mod: "Power", effects: (
    "Ignores 15% armor damage reduction.",
  )),
  weapon("Scimitar", melee, "Blade", "B3", "2", "Physical", stat-mod: "Speed", effects: (
    "+5% damage per consecutive successful hit. Resets on miss.",
  )),
  weapon(
    "Bastard Sword",
    melee,
    "Blade",
    "B4",
    "4",
    "Physical",
    stat-mod: "Power",
    tags: (two-handed,),
    bonus: "+10%/Success over",
    notes: ("May be used one-handed at -1 damage.",),
  ),
  weapon(
    "Zweihander",
    melee,
    "Blade",
    "B5",
    "5",
    "Physical",
    stat-mod: "Power",
    tags: (two-handed,),
    bonus: "+10%/Success over",
    effects: ("-2 Evasion", "-1 Speed", "+1 Advantage vs unarmed opponents."),
  ),
)
#pagebreak()

// ── Page 2: Ranged & Exotic Weapons ─────────────────────────────────────────

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: (1fr, 1fr, 1fr, 1fr),

  weapon("Sling", ranged, "Throwing", "B1", "1", "Physical", stat-mod: "Speed", bonus: "+5%/Success over"),
  weapon("Shortbow", ranged, "Archery", "B2", "2", "Physical", stat-mod: "Perception", tags: (two-handed,)),
  weapon(
    "Longbow",
    ranged,
    "Archery",
    "B3",
    "3",
    "Perception",
    stat-mod: "Perception",
    tags: (two-handed,),
    effects: ("-1 Evasion",),
  ),
  weapon("Crossbow", ranged, "Archery", "B2", "4", "Physical", tags: (two-handed,)),

  weapon("Javelin", ranged, "Throwing", "B2", "3", "Physical", stat-mod: "Power", effects: (
    "Single use. Recoverable.",
  )),
  weapon(
    "Throwing Axe",
    ranged,
    "Throwing",
    "B2",
    "2",
    "Physical",
    stat-mod: "Power",
    bonus: "+15%/Success over",
    effects: ("Single use. Recoverable.",),
  ),
  weapon("Hand Cannon", ranged, "Firearms", "B3", "3", "Physical", stat-mod: "Perception", effects: (
    "Ignores 15% armor damage reduction.",
  )),
  weapon(
    "Arbalest",
    ranged,
    "Crossbow",
    "B4",
    "6",
    "Physical",
    tags: (two-handed,),
    effects: ("-2 Evasion", "Ignores 20% armor damage reduction."),
  ),

  weapon(
    "Recurve Bow",
    ranged,
    "Archery",
    "A3",
    "3",
    "Physical",
    stat-mod: "Speed",
    tags: (two-handed,),
    bonus: "+15%/Success over",
  ),
  weapon("Torch", melee, "Blunt", "B1", "1", "Fire", effects: ("+1 Fire damage to target next turn/Success over.",)),
  weapon("Frost Shard", melee, "Blade", "A2", "1", "Cold", stat-mod: "Conscious", effects: (
    "Target loses 1 AP next turn/Success over.",
  )),
  weapon(
    "Ember Staff",
    melee,
    "Polearms",
    "A3",
    "2",
    "Fire",
    stat-mod: "Conscious",
    tags: (two-handed,),
    effects: ("2 Fire damage to target next turn.",),
  ),

  weapon(
    "Thunder Bow",
    ranged,
    "Archery",
    "A3",
    "2",
    "Lightning",
    stat-mod: "Perception",
    tags: (two-handed,),
    effects: ("Target's next Evasion suffers -1D.",),
  ),
  weapon("Crystal Focus", melee, "Blade", "A4", "3", "Arcane", stat-mod: "Conscious", effects: (
    "Ignores all armor damage reductions.",
  )),
  weapon(
    "Runic Glaive",
    melee,
    "Polearms",
    "A4",
    "4",
    "Arcane",
    stat-mod: "Will",
    tags: (two-handed,),
    effects: ("+10% damage per Injury on wielder.",),
  ),
  weapon(
    "Void Dagger",
    melee,
    "Blade",
    "S2",
    "1",
    "Arcane",
    stat-mod: "Conscious",
    bonus: "+25%/Success over",
    effects: ("On hit, steal 1 AP from target.",),
  ),
)
