#import "../talent-cards.typ": *

#set page(paper: "a4", flipped: true, margin: 0pt)

// ── Page 1: Universal Talents ───────────────────────────────────────────────

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: (1fr, 1fr, 1fr, 1fr),

  talent("Basic Attack",    0, none,    none,
    "Perform 1 attack at 100% weapon damage."),
  talent("Sidestep",        1, none,    none,
    "Gain +1 advantage on Evasion against the next attack targeting you this round."),
  talent("Press On",        2, none,    none,
    "Ignore 1 level of Injury penalties until the start of your next turn."),
  talent("Brace",           2, none,    none,
    "Until the start of your next turn, reduce all incoming damage by 25%."),

  talent("Field Dressing",  3, none,    none,
    "Restore 3 HP to a target ally. Usable once per combat."),
  talent("Rally",           3, none,    none,
    "Roll Persuasion. Each success grants 1 AP to a target ally, up to their AP cap."),
  talent("Provoke",         1, none,    none,
    "Roll Will vs target's Will. On success, the target must direct their next attack at you."),
  talent("Exploit Opening", 2, melee,   none,
    "Perform 1 attack at 100% weapon damage against a prone or Downed target with +2 advantage."),

  talent("Shove",           1, melee,   none,
    "Roll Power vs target's Power. On success, force the target prone."),
  talent("Intercept",       2, none,    none,
    "Choose an adjacent ally. Until your next turn, redirect the next attack targeting them to yourself."),
  talent("Second Wind",     3, none,    none,
    "Restore HP equal to your Forte Quantity. Usable once per combat."),
  talent("Coordinate",      2, none,    none,
    "Choose an ally. That ally may immediately perform a Basic Attack as a free action."),

  talent("Adrenaline Rush", 0, none,    none,
    "Sacrifice 5 HP to gain 2 AP immediately. Cannot reduce HP below 1."),
  talent("Enrage",          2, melee,   none,
    "Until end of combat, gain +25% damage but suffer -1 Evasion. Stacks up to 3 times."),
  talent("Close the Gap",   2, melee,   none,
    "Move from Ranged to Melee distance. Perform 1 attack at 100% weapon damage with +1 advantage."),
  talent("Disengage",       1, melee,   none,
    "Move to Ranged distance for 2 rounds. Enemies do not get a free attack against you."),
)
#pagebreak()

// ── Page 2: Melee & Ranged Talents ──────────────────────────────────────────

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: (1fr, 1fr, 1fr, 1fr),

  talent("Double Strike",   2, melee,   "Blade",
    "Perform 2 attacks at 50% weapon damage each."),
  talent("Overpower",       3, melee,   "Blade",
    "Perform 1 attack at 150% weapon damage. On hit, knock the target prone."),
  talent("Disarm",          3, melee,   "Blade",
    "Perform 1 attack at 0% weapon damage. On hit, target drops their held item."),
  talent("Shield Bash",     2, melee,   none,
    "Perform 1 attack at 100% weapon damage. Target loses 1 AP next turn.",
    notes: ("Requires a shield.",)),

  talent("Riposte",         2, melee,   "Blade",
    "Until your next turn, if an attacker misses you in melee, perform 1 attack at 75% weapon damage."),
  talent("Cleave",          4, melee,   none,
    "Perform 1 attack at 100% weapon damage against up to 2 adjacent targets.",
    notes: ("Requires a two-handed weapon.",)),
  talent("Feint",           1, melee,   "Blade",
    "Roll Blade vs target's Perception. On success, your next attack this round gains +2 advantage."),
  talent("Whirlwind",       5, melee,   "Blade",
    "Perform 1 attack at 75% weapon damage against all enemies within melee range."),

  talent("Execution",       4, melee,   "Blade",
    "Perform 1 attack at 200% weapon damage against a Downed target. Inflicts 1 Injury on hit."),
  talent("Sunder",          3, melee,   "Blunt",
    "Perform 1 attack at 50% weapon damage. On hit, reduce target's armor by 10% until repaired."),
  talent("Volley",          3, ranged,  "Archery",
    "Perform 1 attack at 100% weapon damage against up to 3 targets."),
  talent("Pin Down",        2, ranged,  none,
    "Perform 1 attack at 50% weapon damage. On hit, target loses 2 AP next turn."),

  talent("Steady Hand",     1, ranged,  none,
    "Your next Ranged attack this turn ignores all armor percentage reductions."),
  talent("Covering Fire",   3, ranged,  none,
    "Choose an ally. Until your next turn, attackers targeting that ally suffer 1 level of disadvantage."),
  talent("Double Tap",      4, ranged,  none,
    "Perform 2 attacks at 75% weapon damage each."),
  talent("Drag In",         2, ranged,  "Throwing",
    "Roll Throwing vs target's Power. On success, pull the target from Ranged to Melee distance."),
)
#pagebreak()

// ── Page 3: Support, Specialist & High-Level Talents ────────────────────────

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: (1fr, 1fr, 1fr, 1fr),

  talent("War Cry",         3, none,    none,
    "Roll Will. Each success grants +5% damage to all allies' next attack this round."),
  talent("Triage",          4, none,    none,
    "Roll Medicine vs Ob equal to target's Injury level. Successes remove that many Injury levels.",
    notes: ("Requires Medicine skill.",)),
  talent("Taunt",           2, none,    none,
    "Roll Persuasion vs all enemies' Will. Each enemy you succeed against must target you next turn."),
  talent("Diagnose",        1, none,    none,
    "Roll Medicine vs Ob 2. On success, learn the target's current HP, Injury level, and highest stat.",
    notes: ("Requires Medicine skill.",)),

  talent("Hunker Down",     3, none,    none,
    "Until the start of your next turn, double your shield's damage reduction. You cannot attack.",
    notes: ("Requires a shield.",)),
  talent("Inspire",         4, none,    none,
    "Roll Persuasion vs Ob 3. On success, all allies gain +1 advantage on all rolls until your next turn."),
  talent("Fortify",         2, ranged,  none,
    "While at Ranged distance, gain +1 Evasion and +1 advantage on all Ranged attacks until your next turn."),
  talent("Smoke Screen",    3, none,    none,
    "Until end of your next turn, all attacks against you and adjacent allies suffer 1 level of disadvantage."),

  talent("Last Stand",      0, none,    none,
    "While below 25% HP, gain +50% weapon damage and +1 advantage on all attacks. Passive."),
  talent("Guardian",        4, melee,   none,
    "Until your next turn, redirect all attacks against adjacent allies to yourself. Gain +1 Evasion.",
    notes: ("Requires a shield.",)),
  talent("Deathblow",       6, melee,   "Blade",
    "Perform 1 attack at 300% weapon damage. On miss, lose all remaining AP."),
  talent("Battle Hymn",     5, none,    none,
    "Roll Persuasion vs Ob 4. On success, all allies gain 2 AP and +10% damage until your next turn."),

  talent("Aimed Shot",      3, ranged,  "Archery",
    "Perform 1 attack at 125% weapon damage. Ignores 25% of target's armor reduction."),
  talent("Flurry",          5, melee,   "Blade",
    "Perform 3 attacks at 40% weapon damage each."),
  talent("Snipe",           5, ranged,  "Archery",
    "Perform 1 attack at 200% weapon damage. If target is unaware, inflict 1 Injury on hit."),
  talent("Resurgence",      6, none,    none,
    "Revive a Downed ally with HP equal to your Will Quantity. Remove 1 Injury level."),
)
