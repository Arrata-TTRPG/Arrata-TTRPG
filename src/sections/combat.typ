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

  _Note: Red labels are annotations only and do not appear on the actual card._
  #v(-15pt)
  #align(center)[
    #pad(top: 14pt, left: 8pt, right: 8pt)[
      #ann-card-shell(
        [#text(weight: "bold", size: 13pt)[#ob("Double Strike", "Name")]#text(size: 10pt, style: "italic")[#h(2pt)#ob(
              "· Blade",
              "Req. skill",
            )]],
        text(weight: "bold", size: 12pt)[#ob("2 AP ◆◆", "AP cost")],
        main-area(
          text(size: 10pt)[#ub("Perform 2 attacks at 50% weapon damage each.", "Mechanical effect")],
        ),
      )
    ]
  ]
]

== Weapons

Every weapon has a base damage value, a damage type, and an associated Skill - it's important to look next to the skill used by a weapon, as it might specify a Skill requirement. If it does, you must meet both the minimum Quality and Quantity of that Skill requirement to use the weapon at all.

Some weapons add a stat modifier to their base damage, representing the physical
force or technique behind the blow. A weapon's card lists all of this alongside
any special effects or restrictions.

#pagebreak()

#slantedColorbox(title: "Weapon Card", width: auto, radius: 0pt, color: black)[

  _Note: Red labels are annotations only and do not appear on the actual card._
  #v(-15pt)
  #align(center)[
    #pad(top: 14pt, left: 8pt, right: 8pt)[
      #ann-card-shell(
        text(weight: "bold", size: 13pt)[#ob("Longsword", "Name")],
        text(weight: "bold", size: 12pt)[#ob("Melee", "Weapon type")],
        main-area(
          stack(
            spacing: 8pt,
            stack(
              dir: ltr,
              spacing: 4pt,
              text(fill: ann)[$overbracket(
                #text(fill: white, weight: "bold", size: 26pt)[3],
                upright(#text(size: 8pt, fill: ann)[Base dmg])
              )$],
              align(horizon)[#text(fill: ann)[$overbracket(
                #text(fill: white, weight: "bold", size: 13pt)[#sym.plus Power],
                upright(#text(size: 8pt, fill: ann)[Stat mod.])
              )$]],
            ),
            v(2pt),
            text(size: 10pt)[#ub("Physical", "Damage type")],
            text(size: 9pt)[#ub("+10%/Success over", "Per-success bonus")],
          ),
          note: align(left)[#pad(bottom: 6pt)[#text(fill: ann)[$cases(
            delim: "[", reverse: #true,
            #text(fill: white, style: "italic", size: 9pt)[*May be used one-handed at -1 damage.*]
          ) #h(2pt) #text(size: 7pt)[Special note]$]]],
        ),
        tag: pad(top: 5pt)[#text(fill: ann)[$overbracket(
            #text(fill: white)[Blade],
            upright(#text(size: 8pt, fill: ann)[Skill])
          )$] #text(fill: ann)[$overbracket(
            #text(fill: white)[· B3],
            upright(#text(size: 8pt, fill: ann)[Skill #linebreak() req.])
          )$]],
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

  _Note: Red labels are annotations only and do not appear on the actual card._
  #v(-15pt)
  #align(center)[
    #pad(top: 14pt, left: 8pt, right: 8pt)[
      #ann-card-shell(
        text(weight: "bold", size: 13pt)[#ob("Chain Mail", "Name")],
        [],
        main-area(
          stack(spacing: 10pt, text(size: 10pt)[#ub("-25% damage", "% damage reduction")], text(size: 10pt)[#ub(
            "-1 Evasion",
            "Stat penalty",
          )]),
        ),
      )
    ]
  ]
]

== Attacking

When a character uses a Talent to attack, the attacker rolls the *Skill
associated with their weapon* and the defender rolls their *Evasion*. If the
attacker's successes meet or exceed the defender's, the attack lands. If the
attacker's successes fall short, the attack misses entirely.

=== Multi-Attack

Some Talents perform more than one attack at once. When this happens, the
attacker makes a single roll for all attacks, and the defender makes a single
Evasion roll. The result applies to every attack in the group: if the roll
hits, all attacks hit; if it misses, all attacks miss.

=== Damage

When an attack lands, damage is calculated in two steps:

+ *Sum all flat modifiers*: Start with the weapon's base damage and stat roll,
  then add or subtract any flat bonuses from Talents, and subtract any flat
  armor reductions. \
  $italic("base") + italic("stat roll") + sum italic("flat modifiers") - italic("armor flat")$
+ *Multiply all percentage modifiers*: Multiply the result by every percentage
  modifier together: Talent multipliers, the weapon's per-success bonus
  (+X% per success over, noted on the weapon's card), and armor percentage
  reductions. Round the final result at 0.5. Minimum 0. \
  $times product italic("% modifiers")$

#slantedColorbox(title: "Damage Formula", width: auto, radius: 0pt, color: black)[
  #set text(size: 12pt)
  #align(center)[
    $round((italic("base") + italic("stat") + sum italic("flat")) times product italic("% mods"))$
  ]
]

#slantedColorbox(title: "Attack Example", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  _Mira uses Double Strike (2 attacks, 50% damage each) against a bandit wearing
  Chain Mail (-25% damage). Her longsword has +10%/Success over._

  _She makes one roll for both attacks: $B 5$ Blade rolls 4 successes. The bandit
  rolls Evasion and rolls 2 successes. Both attacks land with 2 successes over._

  _She rolls Power and rolls 2 successes: $3 + 2 = 5$ flat damage. Her percentage
  modifiers are: Double Strike (×0.5), 2 successes over (×1.2), Chain Mail
  (×0.75). Multiplied together: $0.5 times 1.2 times 0.75 = 0.45$. Each attack
  deals $round(5 times 0.45) = round(2.25) =$ 2 damage, for a total of *4 damage*._
]

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
  #set text(size: 9pt)
  #grid(
    columns: (1fr, 1fr),
    gutter: 8pt,
    table(
      columns: (auto, auto),
      inset: (x: 6pt, y: 2pt),
      [*Roll*], [*Stat*],
      [1], [Will],
      [2], [Power],
      [3], [Perception],
    ),
    table(
      columns: (auto, auto),
      inset: (x: 6pt, y: 2pt),
      [*Roll*], [*Stat*],
      [4], [Speed],
      [5], [Conscious],
      [6], [Forte],
    ),
  )
  _Recalculate maximum Health after any change to Will or Forte._
]

#pagebreak()
