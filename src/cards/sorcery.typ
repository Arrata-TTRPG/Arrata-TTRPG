#import "../talent-cards.typ": *

#set page(paper: "a4", flipped: true, margin: 0pt)

// ── Page 1: Destroy Talents ─────────────────────────────────────────────────

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
    "Cast a Destroy spell with the Ice Element at 50% damage. -1 AP/success over.",
  ),
  talent(
    "Thunderstrike",
    2,
    "Sorcery",
    "Sorcery",
    "Cast a Destroy spell with the Lightning Element at 100% damage. -1 Evasion/success over until target's next turn.",
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
    "Cast a Destroy spell with the Water Element at 100% damage. -1 Speed/success over for 1 turn.",
  ),
  talent(
    "Shockwave",
    3,
    "Sorcery",
    "Sorcery",
    "Cast a Destroy spell with the Sound Element at 75% damage. -1 Perception/success over for 2 turns.",
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
    "Cast a Destroy spell with the Lightning Element at 50% damage. +1 additional target/success over.",
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
    "Cast a Destroy spell with the Earth Element at 200% damage. Skip your next turn; do not collect AP.",
  ),
  talent(
    "Flash",
    1,
    "Sorcery",
    "Sorcery",
    "Cast a Destroy spell with the Light Element at 0% damage. -1 advantage/success over on target's next roll.",
  ),
)
#pagebreak()

// ── Page 2: Unleash Talents ─────────────────────────────────────────────────

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: (1fr, 1fr, 1fr, 1fr),

  talent(
    "Assault",
    2,
    "Sorcery",
    "Sorcery",
    "Cast an Unleash Assault spell. +1 Injury/success over (Will vs Will). If the caster loses, the caster takes +1 Injury/success over instead.",
  ),
  talent(
    "Dominate",
    3,
    "Sorcery",
    "Sorcery",
    "Cast an Unleash Domination spell. Target becomes an ally for 1 turn/success over (Will vs Will). If the caster loses, the caster is dominated instead.",
  ),
  talent(
    "Enslave",
    5,
    "Sorcery",
    "Sorcery",
    "Cast an Unleash Domination spell with concentration. Target makes a Will check at the start of their turn vs the caster's successes to break free. +1 Disadvantage/success over (Will vs Will) on breaking free checks. If the caster loses, the caster is enslaved instead.",
  ),

  // ── Control: Utility ──
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
    "Cast a Control spell. Remove 1 turn of a debuff from a target. +1 turn removed/success over.",
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

  // ── Control: Debuffs ──
  talent(
    "Frostbite",
    3,
    "Sorcery",
    "Sorcery",
    "Cast a Control spell with the Ice Element at 0% damage. -2 AP/success over.",
  ),
  talent(
    "Static",
    2,
    "Sorcery",
    "Sorcery",
    "Cast a Control spell with the Lightning Element at 0% damage. -2 Evasion/success over until target's next turn.",
  ),
  talent(
    "Shackle",
    2,
    "Sorcery",
    "Sorcery",
    "Cast a Control spell with the Force Element at 0% damage. -2 Speed/success over for 1 turn.",
  ),
  talent(
    "Deafen",
    3,
    "Sorcery",
    "Sorcery",
    "Cast a Control spell with the Sound Element at 0% damage. -2 Perception/success over for 2 turns.",
  ),

  talent(
    "Blind",
    1,
    "Sorcery",
    "Sorcery",
    "Cast a Control spell with the Light Element at 0% damage. -2 advantage/success over on target's next roll.",
  ),

  // ── Control: Buffs ──
  talent(
    "Haste",
    2,
    "Sorcery",
    "Sorcery",
    "Cast a Control spell on an ally. +1 Speed/success over for 2 turns.",
  ),
  talent(
    "Aegis",
    2,
    "Sorcery",
    "Sorcery",
    "Cast a Control spell on an ally. +1 Evasion/success over for 2 turns.",
  ),
  talent(
    "Empower",
    3,
    "Sorcery",
    "Sorcery",
    "Cast a Control spell on an ally. +1 advantage/success over for 2 turns.",
  ),
  talent(
    "Invigorate",
    3,
    "Sorcery",
    "Sorcery",
    "Cast a Control spell on an ally. +1 AP/success over.",
  ),
)
#pagebreak()

// ── Page 3: Enchant Talents ─────────────────────────────────────────────────

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: (1fr, 1fr, 1fr, 1fr),

  // ── Weapon Enchants ──
  talent(
    "Sharpen",
    2,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell on a weapon. +1 flat damage/success over.",
  ),
  talent(
    "Imbue",
    3,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell on a weapon. +5% damage/success over.",
  ),
  talent(
    "Ignite Blade",
    3,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell with the Fire Element on a weapon. Hits light targets aflame, dealing 10% of damage each turn for 1 turn/success over.",
  ),
  talent(
    "Frost Edge",
    3,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell with the Ice Element on a weapon. Hits apply -1 AP/success over to the target.",
  ),

  talent(
    "Shock Edge",
    3,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell with the Lightning Element on a weapon. Hits apply -1 disadvantage/success over on the target's next attack.",
  ),
  talent(
    "Vorpal",
    4,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell with the Force Element on a weapon. +10%/success over to the weapon's per-success bonus.",
  ),
  talent(
    "Attune Weapon",
    2,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell on a weapon. +1 [chosen stat]/success over to the wielder while equipped.",
  ),
  talent(
    "Siphon",
    4,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell with the Life Element on a weapon. Hits restore 1 HP/success over to the wielder.",
  ),

  // ── Armor Enchants ──
  talent(
    "Fortify",
    3,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell on armor. +5% damage reduction/success over.",
  ),
  talent(
    "Reinforce",
    2,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell on armor. +1 flat damage reduction/success over.",
  ),
  talent(
    "Insulate",
    3,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell with a chosen Element on armor. Negate 10% damage/success over from that Element.",
  ),
  talent(
    "Attune Armor",
    2,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell on armor. +1 [chosen stat]/success over to the wearer while equipped.",
  ),

  talent(
    "Spellguard",
    3,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell with the Animus Element on armor. +1 Will/success over when defending against spells.",
  ),
  talent(
    "Featherlight",
    2,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell with the Force Element on armor. Remove 1 armor penalty/success over (Evasion or Speed reductions).",
  ),
  talent(
    "Thornmail",
    4,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell on armor. Attackers take 1 flat damage/success over when hitting the wearer in melee.",
  ),
  talent(
    "Bulwark",
    4,
    "Sorcery",
    "Sorcery",
    "Cast an Enchant spell with the Earth Element on armor. +10% damage reduction/success over. -1 Speed while active.",
  ),
)
