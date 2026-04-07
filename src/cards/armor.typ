#import "../talent-cards.typ": *

#set page(paper: "a4", flipped: true, margin: 0pt)

// ── Page 1: Standard Armor ──────────────────────────────────────────────────

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: (1fr, 1fr, 1fr, 1fr),

  armor("Padded Cloth",    ("-10% damage",)),
  armor("Leather Armor",   ("-15% damage",)),
  armor("Studded Leather", ("-20% damage",)),
  armor("Hide Armor",      ("-15% damage", "+1 Forte for Injury threshold")),

  armor("Chain Mail",      ("-25% damage", "-1 Evasion")),
  armor("Scale Mail",      ("-20% damage", "-1 Evasion")),
  armor("Brigandine",      ("-20% damage", "-1 Evasion", "-25% ranged damage")),
  armor("Splint Mail",     ("-30% damage", "-2 Evasion")),

  armor("Half Plate",      ("-30% damage", "-2 Evasion", "-1 Speed")),
  armor("Full Plate",      ("-40% damage", "-3 Evasion", "-1 Speed", "-50% ranged damage")),
  armor("Fortress Plate",  ("-50% damage", "-4 Evasion", "-2 Speed"),
    notes: ("Cannot use Sidestep.",)),
  armor("Ceremonial Plate",("-35% damage", "-2 Evasion", "-1 Speed"),
    notes: ("+1 advantage on Persuasion checks.",)),

  armor("Wooden Shield",   ("-1 damage", "-15% ranged damage"),
    notes: ("Cannot use with two-handed weapons.",)),
  armor("Iron Shield",     ("-2 damage", "-25% ranged damage"),
    notes: ("Cannot use with two-handed weapons.",)),
  armor("Tower Shield",    ("-3 damage", "-2 Evasion", "-1 Speed", "-50% ranged damage"),
    notes: ("Cannot use with two-handed weapons.",)),
  armor("Buckler",         ("-1 damage", "-10% ranged damage"),
    notes: ("No two-handed restriction.",)),
)
#pagebreak()

// ── Page 2: Specialty Armor ─────────────────────────────────────────────────

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: (1fr, 1fr, 1fr, 1fr),

  armor("Cloak of Ashes",  ("-10% damage", "-50% Fire damage")),
  armor("Frost Mantle",    ("-10% damage", "-50% Cold damage")),
  armor("Storm Cloak",     ("-10% damage", "-50% Lightning damage")),
  armor("Warded Robes",    ("-5% damage", "-25% all elemental damage")),

  armor("Scout's Leathers",("-10% damage", "+1 Speed"),
    notes: ("+1 advantage on Stealth checks.",)),
  armor("Duelist's Coat",  ("-10% damage", "+1 Evasion")),
  armor("Bone Harness",    ("-15% damage", "+1 Injury threshold")),
  armor("Traveler's Mail", ("-20% damage",),
    notes: ("No Speed or Evasion penalty.",)),

  armor("Animus Plate",    ("-35% damage", "-1 Evasion"),
    notes: ("Restore 1 HP when you spend 3+ AP on a Talent.",)),
  armor("Dragonscale",     ("-40% damage", "-1 Evasion", "-50% Fire damage")),
  armor("Gilded Brigandine",("-25% damage", "-1 Evasion"),
    notes: ("+1 advantage on Persuasion.",)),
  armor("Mirrorguard",     ("-20% damage", "-1 Evasion"),
    notes: ("Reflect 25% of incoming damage back to attacker.",)),

  armor("Nullweave Robes", ("-5% damage",),
    notes: ("Immune to all elemental damage types.",)),
  armor("Ironbark Shield", ("-2 damage", "-25% elemental damage", "-20% ranged damage"),
    notes: ("Cannot use with two-handed weapons.",)),
  armor("Living Armor",    ("-30% damage", "-1 Evasion"),
    notes: ("Restore 1 HP at the start of each of your turns.",)),
  armor("Void Shroud",     ("-15% damage",),
    notes: ("When hit, attacker loses 1 AP. Once per round.",)),
)
