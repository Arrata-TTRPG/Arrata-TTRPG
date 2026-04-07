#import "../typst-boxes.typ": *
#import "../talent-cards.typ": *

= Combat

There comes a time when fighting is inevitable; you just have to beat an
opponent into submission. *Combat* is the first _subsystem_ for Arrata, and will
detail how to deal with physical, violent conflict, how damage is dealt and
mitigated, and what damage can do to a character.

== Health

Each character has a *Health* stat, a _Finite Stat Resource_ representing how
much physical punishment they can endure before going down. A character's
maximum Health is equal to *2 $times$ Will Quantity $+$ 4 $times$ Forte Quantity*.

#slantedColorbox(title: "Health Example", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  _A fighter with $B 3$ Will and $B 4$ Forte has a maximum Health of
  $(2 times 3) + (4 times 4) = 22$. If their Forte later increases to $B 5$,
  their maximum Health becomes $(2 times 3) + (4 times 5) = 26$._
]

== Evasion

*Evasion* represents a character's ability to avoid, deflect, or weather incoming
attacks. It is a _Skill_ with *Speed* and *Conscious* as its roots, and begins at
the highest Quality of its roots and the average Quantity of those two stats.
Evasion can be leveled like any other Skill.

When a character is attacked, they roll their Evasion. The attacker must meet or
exceed the defender's Evasion roll to land a hit.

== Combat Start

When a violent encounter begins, all characters, players and NPCs alike, roll
their *Speed* stat. The number of successes determines turn order, with the
highest going first. In the event of a tie, the tied characters re-roll Speed
among themselves to determine order.

#slantedColorbox(title: "Initiative Example", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  _Four characters roll Speed at the start of combat. Mira rolls $B 5$ and rolls
  3 successes. Agnar rolls $B 3$ and rolls 2 successes. The bandit rolls $B 4$
  and rolls 3 successes. The archer rolls $B 2$ and rolls 0 successes. Mira and
  the bandit re-roll to break their tie. Mira rolls 2 successes and the bandit
  rolls 1, so the final order is: Mira, the bandit, Agnar, then the archer._
]

== Taking a Turn

At the start of each of their turns, a character gains *Action Points (AP)*
equal to a roll of their Speed, with a minimum of 1. AP carries over between
turns but cannot exceed *2 $times$ Speed Quantity*. On their turn, a character
may spend AP on one *Talent*, or spend no AP and pass to the next character in
order. Unspent AP carries over to the next turn.

#slantedColorbox(title: "AP Example", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  _A character with $B 4$ Speed rolls at the start of their turn and rolls 2
  successes, gaining 2 AP. They carried 1 AP over from last turn, giving them 3
  total. Their Speed Quantity is 4, so their cap is $2 times 4 = 8$. They spend
  2 AP on Double Strike and pass with 1 AP remaining._
]

== Talents

Talents are special abilities a character has learned, found, or been trained in.
Each Talent has an AP cost and describes exactly what it does when used. On a
character's turn, they may use one Talent by spending its AP cost. Some Talents
require a specific weapon, Skill, and/or piece of equipment to use, and these requirements are listed on the Talent's card.

#slantedColorbox(title: "Talent Card", width: auto, radius: 0pt, color: black)[
  #text(size: 10pt)[_Note: Red labels are annotations only and do not appear on the actual card._]
  #v(-15pt)
  #align(center)[
    #pad(top: 14pt, left: 8pt, right: 8pt)[
      #talent(
        ob("Double Strike", "Name", size: 16pt, weight: "bold"),
        ob("2 AP ◆◆", "AP cost", size: 14pt, weight: "bold"),
        ub(melee, "Type"),
        ub("Skill: Blade", "Skill req.", size: 11pt, style: "italic"),
        ob(text[Perform 2 attacks at 50% weapon #linebreak() damage each.], "Mechanical effect", size: 11pt),
        height: auto,
      )    ]
  ]
]



== Weapons

Every weapon has a base damage value, a damage type, and an associated Skill - it's important to look next to the skill used by a weapon, as it might specify a Skill requirement. If it does, you must meet both the minimum Quality and Quantity of that Skill requirement to use the weapon at all.

Some weapons add a stat modifier to their base damage, representing the physical
force or technique behind the blow. A weapon's card lists all of this alongside
any special effects or restrictions.

#slantedColorbox(title: "Weapon Card", width: auto, radius: 0pt, color: black)[
  #text(size: 10pt)[_Note: Red labels are annotations only and do not appear on the actual card._]
  #v(-15pt)
  #align(center)[
    #pad(top: 14pt, left: 8pt, right: 8pt)[
      #weapon(
        ob("Longsword", "Name", size: 16pt, weight: "bold"),
        ob(melee, "Range", size: 14pt, weight: "bold"),
        ob("Blade", "Skill Used", size: 11pt, style: "italic"),
        ob("B3", "Skill Req.", size: 11pt, style: "italic"),
        ob("3", "Base dmg.", size: 31pt, weight: "bold"),
        ub("Physical", "Damage type", size: 12pt),
        stat-mod: ob("Power", "Stat mod.", size: 16pt, weight: "bold"),
        tags: (ob(two-handed, "Requires two hands", size: 11pt, style: "italic"),),
        notes: (ub("May be used one-handed at -1 damage.", "Special note", size: 11pt, style: "italic"),),
        bonus: ub("+10%/Success over", "Per-success bonus", size: 11pt),
        height: auto,
      )
    ]
  ]
]
== Armor

Armor reduces incoming damage before it is applied to Health. A character's
equipped armor lists its damage reduction as either a flat value (e.g. _-1
damage_) or a percentage (e.g. _-15% damage_).

Heavier armors may impose additional penalties such as reduced Evasion or Speed,
listed directly on the armor's card.

#slantedColorbox(title: "Armor Card", width: auto, radius: 0pt, color: black)[
  #text(size: 10pt)[_Note: Red labels are annotations only and do not appear on the actual card._]
  #v(-15pt)
  #align(center)[
    #pad(top: 14pt, left: 8pt, right: 8pt)[
      #armor(
        ob("Ceremonial Plate", "Name", size: 16pt, weight: "bold"),
        (
          ob("-35% damage", "Damage multiplier", size: 11pt),
          ob("-2 Evasion", "Evasion reduction", size: 11pt),
          ob("-1 Speed", "Speed Reduction", size: 11pt),
          ob("+1 advantage on Persuasion checks", "Special passive effect", size: 11pt),
        ),
        height: auto,
      )
    ]
  ]
]

== Attacking

When a character uses a Talent to attack, the attacker rolls the Skill
associated with their weapon and the defender rolls their _Evasion_. If the
attacker's successes meet or exceed the defender's, the attack lands. If the
attacker's successes fall short, the attack misses entirely.

=== Multi-Attack

Some Talents perform more than one attack at once. When this happens, the
attacker makes a single roll for all attacks, and the defender makes a single
Evasion roll. The result applies to every attack in the group: if the roll
hits, all attacks hit; if it misses, all attacks miss.

=== Damage

When an attack lands, damage is calculated in three steps:

+ *Sum all flat modifiers*: Start with the weapon's base damage and stat roll,
  then add or subtract any flat bonuses from Talents armors, weapons, etc. \
  $italic("base") + italic("stat roll") + sum italic("flat modifiers") = italic("Flat dmg.")$
+ *Multiply all percentage modifiers*: Multiply every percentage
  modifier together: Talent multipliers, the weapon's per-success bonus
  (+X% per success over, noted on the weapon's card), and armor percentage
  reductions. \
  $times product italic("% modifiers") = italic("Dmg. mult")$
+ *Multiply the two together*: Multiply the total flat damage by the total percentage
  modifiers, then round to the nearest whole number. \
  $round(italic("Flat dmg.") times italic("Dmg. mult")) = italic("Final damage")$

#slantedColorbox(title: "Attack Example", width: auto, radius: 0pt, color: black)[
  #set text(size: 9pt)
  _Mira uses Double Strike (2 attacks, 50% damage each) against a bandit wearing
  Chain Mail (-25% damage). Her longsword has +10%/Success over._

  _She makes one roll for both attacks: $B 5$ Blade rolls 4 successes. The bandit
  rolls Evasion and rolls 2 successes. Both attacks land with 2 successes over._

  _She rolls Power and rolls 2 successes and calculates step 1:_
  $
    underbracket(
      overbracket(3, "Base" #linebreak() "dmg".)
      #h(-2pt) + #h(-2pt)
      overbracket(2, "Stat" #linebreak() "mod.")
      #h(-2pt) + #h(-2pt)
      overbracket(0, sum #linebreak() "flat" #linebreak() "mods")
      #h(2pt) = #h(-5pt)
      overbracket(
        5,
        "Total flat" #linebreak() "damage"
      ), italic("base") + italic("stat roll") + sum italic("flat modifiers")\, "Step 1"
    )
  $

  _Her percentage modifiers are: Double Strike (×0.5), 2 successes over (×1.2), Chain Mail
  (×0.75). Multiplied together into step 2:_
  $
    underbracket(
      overbracket(0.5, "Double" #linebreak() "Strike")
      #h(-3pt) times #h(-3pt)
      overbracket(1.2, "Successes" #linebreak() "over")
      #h(-3pt) times
      overbracket(0.75, "Chain" #linebreak() "Mail") = overbracket(0.45, "Total" #linebreak() "mult"),
      times product italic("% mods")\, "Step 2"
    )
  $
  _Each attack deals_ #h(-9pt) $overbracket(floor.l 5, "Flat dmg.") #h(-3pt) times #h(-1pt) overbracket(0.45 ceil.r, "Dmg. mult") #h(-1.5pt) = overbracket(round(2.25) = 2, "Final damage")$ _damage for a total of *4 damage*. Remember, Mira used a Talent with *2* attacks that evaluate to the same value, so we can simply multiply_ $2 times 2$.
]

== Distances

There are two primary distance categories in combat: *Melee* and *Ranged*. All characters start the battle in melee range, however some Talents allow a character to retreat back to the Ranged distance. At this distance, they cannot be targeted by melee attacks, but they also cannot use melee weapons or talents that require melee range, only Ranged Talents and Ranged weapons are usable.

== Injury & Death

=== Going Down

When a character's Health reaches 0, they are *Downed*. A Downed character
cannot act on their turn and falls prone. Any attack that hits a Downed character
deals no further damage to Health, but instead inflicts a level of *Injury*.

=== Injury

Injury represents lasting physical trauma: broken bones, deep wounds, and
failing organs. Each level of Injury imposes a cumulative *$-1D$* penalty to
_all_ rolls.

When a character's Injury level equals their *Forte Quantity*, they die.

#slantedColorbox(title: "Injury Example", width: auto, radius: 0pt, color: black)[

  _Agnar has $B 3$ Forte, so he can sustain 3 levels of Injury before dying. He
  goes down and takes a hit while Downed, gaining 1 level of Injury. Revived
  by an ally's Field Dressing Talent, he fights on at $-1D$ to all rolls. Two
  more Injuries will kill him._
]

=== Recovery

A Downed character can only be brought back into the fight by a Talent that
explicitly revives them. Recovering from Injury requires treatment: a character
with the *Medicine* skill must roll Medicine against an Obstacle equal to the
injured character's current Injury level.

The number of successes determines how many Injury levels are removed. All
Injury is cleared after treatment, but any levels _not_ covered by successes
are converted into permanent stat reductions instead. For each such level,
roll a $d 6$ to determine which stat is reduced by 1:

#slantedColorbox(title: "Injury Recovery", width: auto, radius: 0pt, color: black)[
  #grid(
    columns: (1fr, 1fr),
    gutter: 12pt,
    align: center,
    table(
      columns: (1fr, 1fr),
      stroke: (x, y) => (
        left: if x > 0 { 0.5pt + white } else { none },
        top: if y > 0 { 0.5pt + white } else { none },
      ),
      [*Roll*], [*Stat*],
      [1], [Will],
      [2], [Power],
      [3], [Perception],
    ),
    table(
      columns: (1fr, 1fr),
      stroke: (x, y) => (
        left: if x > 0 { 0.5pt + white } else { none },
        top: if y > 0 { 0.5pt + white } else { none },
      ),
      [*Roll*], [*Stat*],
      [4], [Speed],
      [5], [Conscious],
      [6], [Forte],
    ),
  )
  #v(-10pt)
  #text(size: 10pt)[_Note: Recalculate maximum Health after any change to Will or Forte._]
]

#pagebreak()
