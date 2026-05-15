#import "../talent-cards.typ": *

#set page(paper: "us-letter", flipped: true, margin: 0pt)

// Notes for editors:
// - Use `advantage(n)` for Advantage/Disadvantage modifiers.
// - Capitalize game terms (Advantage, Success, AP, Evasion, Speed, etc.).
// - Use "/Success over" with capital S.

// Page 1: Universal Talents

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: (1fr, 1fr, 1fr, 1fr),

  talent("Attack", 0, none, none, "Perform 1 attack at 100% weapon damage."),
  talent("Sidestep", 1, none, none, [Gain #advantage(1) against one attack until your next turn.]),
  talent("Press On", 2, none, none, "Ignore 1 level of Injury for 2 turns."),
  talent(
    "Brace",
    2,
    none,
    none,
    "Until the start of your next turn, reduce all incoming damage by 25%, but also deal 15% less damage.",
  ),

  talent("Field Dressing", 3, none, "Medicine", "Roll Medicine. Heal a chosen ally by the number of successes."),
  talent("Rally", 3, none, none, "Roll Persuasion. Each success grants 1 AP to a target ally, up to their AP cap."),
  talent(
    "Provoke",
    1,
    none,
    "Intimidation",
    "Roll Intimidation vs target's Will. On success, the target must direct their next attack at you. Successes over extend the duration by 1 turn each.",
  ),
  talent(
    "Create Opening",
    2,
    melee,
    "Any Melee",
    [Perform an attack against an enemy at 50% damage. On hit, gain #advantage(1) against that target until they pass a Will check vs your successes at the start of their turn.],
  ),

  talent(
    "Shove",
    1,
    melee,
    "Brawling",
    "Roll Brawling vs target's Power. On success, force the target prone. Prone enemies cannot make Evasion rolls. Effect is dispelled at the start of their turn.",
  ),
  talent(
    "Intercept",
    2,
    none,
    none,
    "Choose an ally at the same distance. Until your next turn, redirect the next attack targeting them to yourself.",
  ),
  talent("Second Wind", 3, none, none, "Restore HP equal to your Forte Quantity. Usable once per combat."),
  talent(
    "Coordinate",
    4,
    none,
    none,
    "Choose an ally. You and that ally immediately each perform 1 Attack against a chosen enemy. The ally's free Attack does not consume their turn.",
  ),

  talent("Adrenaline Rush", 2, none, none, "Sacrifice 25% Max HP to gain 2 AP immediately. Cannot reduce HP below 1."),
  talent(
    "Enrage",
    2,
    none,
    none,
    "Until end of combat, every hit you land grants +25% damage and -1 Evasion. Stacks up to 3 times.",
  ),
  talent(
    "Close the Gap",
    2,
    none,
    none,
    [Move from Ranged to Melee distance. Perform 1 attack at 100% weapon damage with #advantage(1).],
  ),
  talent(
    "Disengage",
    1,
    none,
    none,
    "Move to Ranged distance for 2 rounds, after which you return to Melee.",
  ),
)
#pagebreak()

// Page 2: Melee & Ranged Talents

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: (1fr, 1fr, 1fr, 1fr),

  talent("Double Strike", 2, melee, "Blade", "Perform 2 attacks at 50% weapon damage each."),
  talent("Overpower", 3, melee, "Blade", "Perform 1 attack at 150% weapon damage. On hit, knock the target prone."),
  talent("Disarm", 3, melee, "Blade", "Perform 1 attack at 0% weapon damage. On hit, target drops their held item."),
  talent(
    "Shield Bash",
    2,
    melee,
    none,
    "Perform 1 attack at 100% weapon damage. Target loses 1 AP next turn.",
    notes: ("Requires a shield.",),
  ),

  talent(
    "Riposte",
    2,
    melee,
    "Blade",
    "Until your next turn, defend with Blade instead of Evasion. If an attacker misses you in melee, perform 1 attack at 200% weapon damage against them.",
  ),
  talent(
    "Cleave",
    4,
    melee,
    none,
    "Perform 1 attack at 100% weapon damage against up to 2 adjacent targets.",
    notes: ("Requires a two-handed weapon.",),
  ),
  talent(
    "Feint",
    1,
    melee,
    "Blade",
    [Roll Blade vs target's Perception. On success, your next attack against them gains #advantage(2).],
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
    "Perform 1 attack at 50% weapon damage. On hit, negate all of the target's armor damage reduction for 2 rounds.",
  ),
  talent("Volley", 3, ranged, "Archery", "Perform 1 attack at 100% weapon damage against up to 3 targets."),
  talent(
    "Pin Down",
    2,
    ranged,
    "Any Ranged",
    "Perform 1 attack at 50% weapon damage. On hit, target loses 2 AP next turn. Successes over provide -1 AP each.",
  ),

  talent("Steady Hand", 1, ranged, none, "Your next Ranged attack ignores all armor damage reduction."),
  talent(
    "Covering Fire",
    3,
    ranged,
    "Any Ranged",
    [Choose an ally. Until your next turn, attacks targeting that ally suffer #advantage(-1).],
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

// Page 3: Support, Specialist & High-Level Talents

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: (1fr, 1fr, 1fr, 1fr),

  talent(
    "War Cry",
    3,
    none,
    "Intimidation",
    "Roll Intimidation. Each success grants +5% damage to all allies' attacks until your next turn.",
  ),
  talent(
    "Triage",
    4,
    none,
    none,
    "Perform an Injury Recovery roll on a targeted ally.",
    notes: ("Requires Medicine skill.",),
  ),
  talent(
    "Taunt",
    2,
    none,
    "Persuasion",
    "Roll Persuasion vs all enemies' Will. Each enemy you succeed against must target you with a Talent or skip their turn.",
  ),
  talent(
    "Diagnose",
    1,
    none,
    "Medicine",
    "Roll Medicine vs target's Evasion. On success, reveal target's current HP and AP. +1 additional stat revealed/Success over: 1 for weapon stats, 2 for armor bonuses, 3 for available Talents.",
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
    "Persuasion",
    [Roll Persuasion vs each ally's Will. Each ally you succeed against gains #advantage(1) on all rolls until your next turn.],
  ),
  talent(
    "Entrench",
    2,
    ranged,
    none,
    [While at Ranged distance, gain +1 Evasion and #advantage(1) on all Ranged attacks for 2 turns.],
  ),
  talent(
    "Smoke Screen",
    3,
    none,
    none,
    [Until end of your next turn, all attacks against you and allies at the same distance suffer #advantage(-1).],
  ),

  talent(
    "Last Stand",
    2,
    none,
    none,
    [If below 25% HP, gain +50% weapon damage and #advantage(1) on all attacks. Effect ends as soon as your HP returns above 25% or combat ends.],
  ),
  talent(
    "Guardian",
    4,
    melee,
    none,
    "Until your next turn, redirect all attacks against allies at the same distance to yourself. Gain +1 Evasion and -10% damage received.",
    notes: ("Requires a shield.",),
  ),
  talent(
    "Deathblow",
    6,
    melee,
    "Blade",
    "Perform 1 attack at 300% weapon damage. On miss, skip your next turn and do not collect AP.",
  ),
  talent(
    "Battle Hymn",
    5,
    none,
    "Persuasion",
    "Roll Persuasion vs each ally's Will. Each ally you succeed against gains +2 AP and +10% damage until your next turn.",
  ),

  talent(
    "Aimed Shot",
    3,
    ranged,
    "Any Ranged",
    "Perform 1 attack at 150% weapon damage.",
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
