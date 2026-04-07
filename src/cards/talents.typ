#import "../talent-cards.typ": *

#set page(paper: "a4", flipped: true, margin: 0pt)

// ── Page 1: Universal Talents ───────────────────────────────────────────────

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: (1fr, 1fr, 1fr, 1fr),

  talent("Attack", 0, none, none, "Perform 1 attack at 100% weapon damage."),
  talent("Sidestep", 1, none, none, "Gain +1 level of advantage against one attack until your next turn."),
  talent("Press On", 2, none, none, "Ignore 1 level of Injury for 2 turns."),
  talent(
    "Brace",
    2,
    none,
    none,
    "Until the start of your next turn, reduce all incoming damage by 25%, but also deal 15% less damage.",
  ),

  talent("Field Dressing", 3, none, none, "Roll Medicine. Heal a chosen ally by the number of successes."),
  talent("Rally", 3, none, none, "Roll Persuasion. Each success grants 1 AP to a target ally, up to their AP cap."),
  talent(
    "Provoke",
    1,
    none,
    "Intimidation",
    "Roll Intimidation vs target's Will. On success, the target must direct their next attack at you. Every success over grants an addition round of redirection.",
  ),
  talent(
    "Create Opening",
    2,
    melee,
    "Any Melee",
    "Perform an attack against an enemy at 50% damage. Success grants +1 advantage against that target. Target must pass a Will check at the start of their turn against your successes to dispel.",
  ),

  talent(
    "Shove",
    1,
    melee,
    none,
    "Roll Power vs target's Power. On success, force the target prone. Prone enemies cannot make Evasion rolls. Effect is dispelled at the start of their turn.",
  ),
  talent(
    "Intercept",
    2,
    none,
    none,
    "Choose an ally at the same range. Until your next turn, redirect the next attack targeting them to yourself.",
  ),
  talent("Second Wind", 3, none, none, "Restore HP equal to your Forte Quantity. Usable once per combat."),
  talent(
    "Coordinate",
    4,
    none,
    none,
    "Choose an ally. You and that ally immediately attempt an Attack (the Talent) against a chosen enemy.",
  ),

  talent("Adrenaline Rush", 2, none, none, "Sacrifice 25% Max HP to gain 2 AP immediately. Cannot reduce HP below 1."),
  talent(
    "Enrage",
    2,
    melee,
    none,
    "Until end of combat, every hit grants +25% and -1 Evasion. Can stack up to 3 times.",
  ),
  talent(
    "Close the Gap",
    2,
    melee,
    none,
    "Move from Ranged to Melee distance. Perform 1 attack at 100% weapon damage with +1 advantage.",
  ),
  talent(
    "Disengage",
    1,
    melee,
    none,
    "Move to Ranged distance for 2 rounds.",
  ),
)
#pagebreak()

// ── Page 2: Melee & Ranged Talents ──────────────────────────────────────────

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: (1fr, 1fr, 1fr, 1fr),

  talent("Double Strike", 2, melee, "Blade", "Perform 2 attacks at 50% weapon damage each."),
  talent("Overpower", 3, melee, "Blade", "Perform 1 attack at 150% weapon damage. On hit, knock the target prone."),
  talent("Disarm", 3, melee, "Blade", "Perform 1 attack at 0% weapon damage. On hit, target drops their held item."),
  talent("Shield Bash", 2, melee, none, "Perform 1 attack at 100% weapon damage. Target loses 1 AP next turn.", notes: (
    "Requires a shield.",
  )),

  talent(
    "Riposte",
    2,
    melee,
    "Blade",
    "Until your next turn, use Blade instead of Evasion - if an attacker misses you in melee, perform 1 attack at 200% weapon damage.",
  ),
  talent("Cleave", 4, melee, none, "Perform 1 attack at 100% weapon damage against up to 2 adjacent targets.", notes: (
    "Requires a two-handed weapon.",
  )),
  talent(
    "Feint",
    1,
    melee,
    "Blade",
    "Roll Blade vs target's Perception. On success, your next attack against them gains +2 advantage.",
  ),
  talent(
    "Whirlwind",
    5,
    melee,
    "Blade",
    "Perform 1 attack at 75% weapon damage against all enemies within melee range.",
  ),

  talent(
    "Execution",
    4,
    melee,
    "Blade",
    "Perform 1 attack at 200% weapon damage against a target with less than 50% HP.",
  ),
  talent(
    "Sunder",
    3,
    melee,
    "Blunt",
    "Perform 1 attack at 50% weapon damage. On hit, negate all enemy armor bonuses for 2 rounds.",
  ),
  talent("Volley", 3, ranged, "Archery", "Perform 1 attack at 100% weapon damage against up to 3 targets."),
  talent(
    "Pin Down",
    2,
    ranged,
    "Any Ranged",
    "Perform 1 attack at 50% weapon damage. On hit, target loses 2 AP next turn. Successes over provide -1 AP each.",
  ),

  talent("Steady Hand", 1, ranged, none, "Your next Ranged attack ignores all armor damage reductions."),
  talent(
    "Covering Fire",
    3,
    ranged,
    "Any Ranged",
    "Choose an ally. Until your next turn, attacks targeting that ally suffer 1 level of disadvantage.",
  ),
  talent("Double Tap", 4, ranged, "Any Ranged", "Perform 2 attacks at 75% weapon damage each."),
  talent(
    "Drag In",
    2,
    melee,
    "Brawling",
    "Roll Brawling vs target's Speed. On success, pull the target from Ranged to Melee distance.",
  ),
)
#pagebreak()

// ── Page 3: Support, Specialist & High-Level Talents ────────────────────────

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: (1fr, 1fr, 1fr, 1fr),

  talent(
    "War Cry",
    3,
    none,
    none,
    "Roll Will. Each success grants +5% damage to all allies' attacks until your next turn.",
  ),
  talent(
    "Triage",
    4,
    none,
    none,
    "Perform an Injurty Recovery roll on a targeted ally.",
    notes: ("Requires Medicine skill.",),
  ),
  talent(
    "Taunt",
    2,
    none,
    none,
    "Roll Persuasion vs all enemies' Will. Each enemy you succeed against must target you with a Talent or skip their turn.",
  ),
  talent(
    "Diagnose",
    1,
    none,
    none,
    "Roll Medicine vs Target Evasion. On success, reveal target's current HP and AP. Successes over reveal 1 additional piece of information: 1 for Weapon stats, 2 for armor bonuses, 3 for Talents available.",
    notes: ("Requires Medicine skill.",),
  ),

  talent(
    "Hunker Down",
    3,
    none,
    none,
    "Until the start of your next turn, double your shield's damage reduction. You cannot attack, regardless of other Talents.",
    notes: ("Requires a shield.",),
  ),
  talent(
    "Inspire",
    4,
    none,
    none,
    "Roll Persuasion vs each Allies' Will. On success, all allies gain +1 advantage on all rolls until your next turn.",
  ),
  talent(
    "Fortify",
    2,
    ranged,
    none,
    "While at Ranged distance, gain +1 Evasion and +1 advantage on all Ranged attacks for 2 turns.",
  ),
  talent(
    "Smoke Screen",
    3,
    none,
    none,
    "Until end of your next turn, all attacks against you and allies at the same distance suffer 1 level of disadvantage.",
  ),

  talent(
    "Last Stand",
    2,
    none,
    none,
    "If below 25% HP, gain +50% weapon damage and +1 advantage on all attacks until your HP returns above 25% or the end of combat.",
  ),
  talent(
    "Guardian",
    4,
    melee,
    none,
    "Until your next turn, redirect all attacks against allies at the same distance to yourself. Gain +1 Evasion, -10% damage recieved.",
    notes: ("Requires a shield.",),
  ),
  talent(
    "Deathblow",
    6,
    melee,
    "Blade",
    "Perform 1 attack at 300% weapon damage. On miss, skip your next turn, do not collect AP.",
  ),
  talent(
    "Battle Hymn",
    5,
    none,
    none,
    "Roll Persuasion vs all Allies' Will. On success, each ally that you beat gains +2 AP and +10% damage until your next turn.",
  ),

  talent(
    "Aimed Shot",
    3,
    ranged,
    "Any Ranged",
    "Perform 1 attack at 125% weapon damage. Ignores 25% of target's armor reduction.",
  ),
  talent("Flurry", 5, melee, "Blade", "Perform 3 attacks at 40% weapon damage each."),
  talent(
    "Snipe",
    5,
    ranged,
    "Any Ranged",
    "Perform 1 attack at 200% weapon damage. If target is unaware, inflict 1 Injury on hit.",
  ),
  talent(
    "Resurgence",
    6,
    none,
    none,
    "Revive a Downed ally with HP equal to your Will Quantity. Remove 1 Injury level.",
  ),
)
