#import "../talent-cards.typ": *

#set page(paper: "a4", flipped: true, margin: 0pt)

// Notes for editors:
// - Use `advantage(n)` for Advantage/Disadvantage modifiers.
// - "Success over" = successes over the spell's Obstacle, not the defender's roll.
// - Capitalize game terms (Advantage, Success, AP, Evasion, Will, etc.).

// Page 1: Destroy Talents

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: (1fr, 1fr, 1fr, 1fr),

  talent("Destroy", 1, "Sorcery", "Sorcery", "Cast a Destroy spell at 100% damage."),
  talent(
    "Immolate",
    3,
    "Sorcery",
    "Sorcery",
    "Cast a Destroy spell with the Fire Element at 100% damage. Hit targets are lit aflame and take 30% of that damage each turn for 2 turns.",
  ),
  talent(
    "Surge",
    3,
    "Sorcery",
    "Sorcery",
    "Cast a Destroy spell at 80% damage. Immediately cast another Sorcery Talent.",
  ),
  talent(
    "Cataclysm",
    4,
    "Sorcery",
    "Sorcery",
    "Cast a Destroy spell at 150% damage against every character in melee range, including allies. This attack is unavoidable.",
  ),

  talent(
    "Arcane Barrage",
    3,
    "Sorcery",
    "Sorcery",
    "Perform 3 Destroy attacks at 75% damage each.",
  ),
  talent(
    "Freeze",
    3,
    "Sorcery",
    "Sorcery",
    "Cast a Destroy spell with the Ice Element at 50% damage. -1 AP/Success over.",
  ),
  talent(
    "Thunderstrike",
    2,
    "Sorcery",
    "Sorcery",
    "Cast a Destroy spell with the Lightning Element at 100% damage. -1 Evasion/Success over until target's next turn.",
  ),
  talent(
    "Gale",
    2,
    "Sorcery",
    "Sorcery",
    "Cast a Destroy spell with the Force Element at 50% damage. Push target to Ranged distance on hit.",
  ),

  talent(
    "Torrent",
    3,
    "Sorcery",
    "Sorcery",
    "Cast a Destroy spell with the Water Element at 100% damage. -1 Speed/Success over for 1 turn.",
  ),
  talent(
    "Shockwave",
    3,
    "Sorcery",
    "Sorcery",
    "Cast a Destroy spell with the Sound Element at 75% damage. -1 Perception/Success over for 2 turns.",
  ),
  talent(
    "Wither",
    2,
    "Sorcery",
    "Sorcery",
    "Cast a Destroy spell with the Life Element at 50% damage. Target cannot be healed for 1 turn.",
  ),
  talent(
    "Soul Rend",
    4,
    "Sorcery",
    "Sorcery",
    "Cast a Destroy spell with the Animus Element at 125% damage. Defender rolls Will instead of Evasion.",
  ),

  talent(
    "Chain Lightning",
    4,
    "Sorcery",
    "Sorcery",
    "Cast a Destroy spell with the Lightning Element at 50% damage. +1 additional target/Success over.",
  ),
  talent(
    "Quake",
    4,
    "Sorcery",
    "Sorcery",
    "Cast a Destroy spell with the Earth Element at 75% damage against every enemy in melee. Targets are knocked prone on hit.",
  ),
  talent(
    "Eruption",
    5,
    "Sorcery",
    "Sorcery",
    "Cast a Destroy spell with the Earth Element at 200% damage. Skip your next turn and do not collect AP.",
  ),
  talent(
    "Flash",
    1,
    "Sorcery",
    "Sorcery",
    [Cast a Destroy spell with the Light Element at 0% damage. #advantage(-1)/Success over on target's next roll.],
  ),
)
#pagebreak()

// Page 2: Unleash & Control Talents

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: (1fr, 1fr, 1fr, 1fr),

  talent(
    "Assault",
    2,
    "Sorcery",
    "Sorcery",
    "Cast an Unleash Assault spell. +1 Injury/Success over (Will vs Will). If the caster loses, the caster takes +1 Injury/Success over instead.",
  ),
  talent(
    "Dominate",
    3,
    "Sorcery",
    "Sorcery",
    "Cast an Unleash Domination spell. Target becomes an ally for 1 turn/Success over (Will vs Will). If the caster loses, the caster is dominated instead.",
  ),
  talent(
    "Enslave",
    5,
    "Sorcery",
    "Sorcery",
    [Cast an Unleash Domination spell with concentration. Target makes a Will check at the start of their turn vs the caster's successes to break free, with #advantage(-1)/Success over (Will vs Will). If the caster loses, the caster is enslaved instead.],
  ),

  // Control: Utility
  talent(
    "Heal",
    2,
    "Sorcery",
    "Sorcery",
    "Cast a Control spell with the Life Element. Restore HP to a target equal to your Will roll.",
  ),
  talent(
    "Purify",
    1,
    "Sorcery",
    "Sorcery",
    "Cast a Control spell. Remove 1 turn of a debuff from a target. +1 turn removed/Success over.",
  ),
  talent(
    "Cleanse",
    3,
    "Sorcery",
    "Sorcery",
    "Cast a Control spell. Remove a permanent debuff from a target.",
  ),
  talent(
    "Ward",
    3,
    "Sorcery",
    "Sorcery",
    "Cast a Control spell. Grant a target 10% damage reduction for 3 turns.",
  ),

  // Control: Debuffs
  talent(
    "Frostbite",
    3,
    "Sorcery",
    "Sorcery",
    "Cast a Control spell with the Ice Element at 0% damage. -2 AP/Success over.",
  ),
  talent(
    "Static",
    2,
    "Sorcery",
    "Sorcery",
    "Cast a Control spell with the Lightning Element at 0% damage. -2 Evasion/Success over until target's next turn.",
  ),
  talent(
    "Shackle",
    2,
    "Sorcery",
    "Sorcery",
    "Cast a Control spell with the Force Element at 0% damage. -2 Speed/Success over for 1 turn.",
  ),
  talent(
    "Deafen",
    3,
    "Sorcery",
    "Sorcery",
    "Cast a Control spell with the Sound Element at 0% damage. -2 Perception/Success over for 2 turns.",
  ),

  talent(
    "Blind",
    1,
    "Sorcery",
    "Sorcery",
    [Cast a Control spell with the Light Element at 0% damage. #advantage(-2)/Success over on target's next roll.],
  ),

  // Control: Buffs
  talent(
    "Haste",
    2,
    "Sorcery",
    "Sorcery",
    "Cast a Control spell on an ally. +1 Speed/Success over for 2 turns.",
  ),
  talent(
    "Aegis",
    2,
    "Sorcery",
    "Sorcery",
    "Cast a Control spell on an ally. +1 Evasion/Success over for 2 turns.",
  ),
  talent(
    "Empower",
    3,
    "Sorcery",
    "Sorcery",
    [Cast a Control spell on an ally. #advantage(1)/Success over for 2 turns.],
  ),
  talent(
    "Invigorate",
    3,
    "Sorcery",
    "Sorcery",
    "Cast a Control spell on an ally. +1 AP/Success over.",
  ),
)
#pagebreak()

// Page 3: Enchant Talents

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: (1fr, 1fr, 1fr, 1fr),

  // Weapon Enchants
  talent(
    "Sharpen",
    2,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell on a weapon. +1 flat damage/Success over.",
  ),
  talent(
    "Imbue",
    3,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell on a weapon. +5% damage/Success over.",
  ),
  talent(
    "Ignite Blade",
    3,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell with the Fire Element on a weapon. Hits light targets aflame, dealing 10% of damage each turn for 1 turn/Success over.",
  ),
  talent(
    "Frost Edge",
    3,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell with the Ice Element on a weapon. Hits apply -1 AP/Success over to the target.",
  ),

  talent(
    "Shock Edge",
    3,
    "Sorcery",
    "Sorcery",
    [Cast an Enchant spell with the Lightning Element on a weapon. Hits apply #advantage(-1)/Success over on the target's next attack.],
  ),
  talent(
    "Vorpal",
    4,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell with the Force Element on a weapon. +10%/Success over to the weapon's per-success bonus.",
  ),
  talent(
    "Attune Weapon",
    2,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell on a weapon. +1 [chosen stat]/Success over to the wielder while equipped.",
  ),
  talent(
    "Siphon",
    4,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell with the Life Element on a weapon. Hits restore 1 HP/Success over to the wielder.",
  ),

  // Armor Enchants
  talent(
    "Harden",
    3,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell on armor. +5% damage reduction/Success over.",
  ),
  talent(
    "Reinforce",
    2,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell on armor. +1 flat damage reduction/Success over.",
  ),
  talent(
    "Insulate",
    3,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell with a chosen Element on armor. Negate 10% damage/Success over from that Element.",
  ),
  talent(
    "Attune Armor",
    2,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell on armor. +1 [chosen stat]/Success over to the wearer while equipped.",
  ),

  talent(
    "Spellguard",
    3,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell with the Animus Element on armor. +1 Will/Success over when defending against spells.",
  ),
  talent(
    "Featherlight",
    2,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell with the Force Element on armor. Remove 1 armor penalty/Success over (Evasion or Speed reduction).",
  ),
  talent(
    "Thornmail",
    4,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell on armor. Attackers take 1 flat damage/Success over when hitting the wearer in melee.",
  ),
  talent(
    "Bulwark",
    4,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell with the Earth Element on armor. +10% damage reduction/Success over. -1 Speed while active.",
  ),
)
#pagebreak()

// Page 4: Influence Talents

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: (1fr, 1fr, 1fr, 1fr),

  talent(
    "Mark",
    4,
    "Sorcery",
    "Sorcery",
    [Cast an Influence spell with the Animus Element. Target takes #advantage(-1) for each time they are hit. Lasts for the spell's duration.],
  ),
  talent(
    "Expose",
    2,
    "Sorcery",
    "Sorcery",
    "Cast an Influence spell with the Animus Element. Reveal target's current HP and AP. +1 additional stat revealed/Success over: 1 for weapon stats, 2 for armor bonuses, 3 for available Talents.",
  ),
  talent(
    "Phantom",
    4,
    "Sorcery",
    "Sorcery",
    "Cast an Influence spell with the Animus Element. Conjure an illusory ally with 1 HP, acting on your initiative. Each turn the Phantom may attack one enemy: roll Will vs target's Evasion, dealing half your Will roll on hit. Destroyed on any successful hit against it. Lasts for the spell's duration.",
  ),
  talent(
    "Unsettle",
    3,
    "Sorcery",
    "Sorcery",
    [Cast an Influence spell with the Animus Element. The next attack against the target gains #advantage(1)/Success over.],
  ),

  talent(
    "Link",
    6,
    "Sorcery",
    "Sorcery",
    "Cast an Influence spell with the Animus Element. Choose two allies. When one lands an attack, the other immediately attacks for free. Lasts for the spell's duration. Can be permanent with concentration.",
  ),
  talent(
    "Foresight",
    4,
    "Sorcery",
    "Sorcery",
    [Cast an Influence spell with the Animus Element on an ally. The next attack against them has #advantage(-1)/Success over.],
  ),
)
#pagebreak()

// Page 5: Create Talents

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: (1fr, 1fr, 1fr, 1fr),

  talent(
    "Barrier",
    3,
    "Sorcery",
    "Sorcery",
    "Cast a Create spell. Conjure a barrier that absorbs damage for an ally. Absorbs Will roll + 5 flat damage/Success over. Destroyed when absorption is depleted.",
  ),
  talent(
    "Conjure Weapon",
    3,
    "Sorcery",
    "Sorcery",
    "Cast a Create spell. Conjure a weapon with base damage equal to your Will Quantity and a per-success bonus of +5% per spell Success over. Lasts for the spell's duration.",
  ),
  talent(
    "Summon",
    5,
    "Sorcery",
    "Sorcery",
    "Cast a Create spell. Summon an elemental ally with HP equal to your Will roll, 1 AP, and the Destroy talent at 50% of your Will. Lasts for the spell's duration.",
  ),
  talent(
    "Greater Summon",
    6,
    "Sorcery",
    "Sorcery",
    "Cast a Create spell. Summon an elemental ally with HP equal to 2x your Will roll, 2 AP, and the Destroy talent at 100% of your Will. Lasts for the spell's duration.",
  ),

  talent(
    "Forge",
    4,
    "Sorcery",
    "Sorcery",
    "Cast a Create spell with the Earth Element. Conjure a piece of armor with +5% damage reduction/Success over. Lasts for the spell's duration.",
  ),
  talent(
    "Ice Wall",
    3,
    "Sorcery",
    "Sorcery",
    "Cast a Create spell with the Ice Element. Conjure a barrier that blocks all attacks from Ranged distance. Absorbs 10 flat damage/Success over. Destroyed when absorption is depleted.",
  ),
  talent(
    "Living Flame",
    4,
    "Sorcery",
    "Sorcery",
    "Cast a Create spell with the Fire Element. Summon a fire elemental with HP equal to your Will roll and 1 AP. Its attacks light targets aflame for 30% damage per turn for 2 turns.",
  ),
  talent(
    "Stone Sentinel",
    5,
    "Sorcery",
    "Sorcery",
    "Cast a Create spell with the Earth Element. Summon an earth elemental with HP equal to 2x your Will roll, 2 AP, and 25% damage reduction. Lasts for the spell's duration.",
  ),
)
