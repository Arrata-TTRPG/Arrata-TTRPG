#import "../typst-boxes.typ": *
#import "../talent-cards.typ": *

== Arcana <arcana>

*Arcana* is a subsystem for the custom creation of spells and manipulation of
the world through Will. Spells are cast with the *Sorcery* skill, which
requires the *Gifted* Quirk. A spell functions like a weapon: it is used
through Sorcery Talents, which determine how and when a spell is cast in
combat.

=== Building a Spell

A spell is assembled from several components, each contributing to its final
Obstacle. Each spell is defined by:

+ *Impetus* — What you are doing with an Element.
+ *Manifestation* — How the spell appears and what the defender rolls against.
+ *Element* — The fundamental building block being manifested.
+ *Effects* — Optional modifiers: duration, distance, level, or mass.

=== Casting a Spell

To cast a spell, sum the Ob from each component to determine the spell's total
Ob, then roll Sorcery:

+ If the caster's successes are *less than* the spell Ob, the spell fizzles
  with no effect.
+ If the caster's successes *meet or exceed* the spell Ob, the spell is
  successfully cast. The number of successes over the spell Ob determines the
  magnitude of any spell effects (e.g. +% damage, additional targets).
+ The caster's *total successes* become the Ob for the defender's roll. The
  defender rolls the stat determined by the spell's Manifestation. If the
  defender fails, the spell lands. If the defender succeeds, the spell is
  avoided.

=== Arcane Impeti

Arcane Impeti are the foundations of spellcraft. Each provides a broad category
of what can be done with Arcana. Impeti with additional modifiers are detailed
in their own subsections.

#align(center)[#table(
  columns: (auto, 1fr, auto),
  inset: 5pt,
  align: (center + horizon, left, center + horizon),
  stroke: (x, y) => (
    left: if x > 0 { 0.5pt + white },
    top: if y > 0 { 0.5pt + white },
  ),
  [*Impetus*], [*Description*], [*Ob*],
  [Influence],
  [Communicate ideas: scrying, telepathy, and subtle manipulation
    of people.],
  [+0],

  [Control],
  [Exert power over an Element to complete a task: mend a wound,
    start a fire, freeze a stream.],
  [+2],

  [Create],
  [Manifest an Element permanently into the world. The Element
    persists until dispelled. Used for elemental shields, producing water,
    and forming complex objects.],
  [+2],

  [Destroy], [Force an Element outward chaotically, dealing damage.], [+1],
  [Enchant],
  [Inject an Element into the world: subtle influence, conditional
    triggers (on hit, on proximity), and hardening or softening
    objects.],
  [+2],

  [Unleash],
  [The most personal and powerful Impetus. Force your Will upon a
    target. Comes in two forms: Assault and Domination.],
  [+2],
)]


=== Arcane Manifestations

Manifestations define how a spell appears and interacts with the world. Each
Manifestation determines what the defender rolls (under *Defense*) against when targeted.

#align(center)[#table(
  columns: (auto, 1fr, auto, auto),
  inset: 5pt,
  align: (center + horizon, left, center + horizon, center + horizon),
  stroke: (x, y) => (
    left: if x > 0 { 0.5pt + white },
    top: if y > 0 { 0.5pt + white },
  ),
  [*Manifestation*], [*Description*], [*Defense*], [*Ob*],
  [Projectile], [Manifests from the caster toward a target.], [Evasion], [+1],
  [Touch], [Manifests from the caster's contact.], [Evasion], [+0],
  [Telepathic],
  [Mind-to-mind manifestation over distance. May pass through
    obstacles.],
  [Will],
  [+2],

  [Telekinetic],
  [Manifests at a distance from the caster for non-mental
    effects: explosions, moving objects, etc.],
  [Evasion],
  [+2],

  [Aura],
  [Manifests in the environment, centered on the
    caster.],
  [Speed],
  [+3],
)]


=== Arcane Effects

Arcane Effects are shared modifiers available across multiple Impeti:

#align(center)[#table(
  columns: (auto, 1fr, auto),
  inset: 5pt,
  align: (center + horizon, left, center + horizon),
  stroke: (x, y) => (
    left: if x > 0 { 0.5pt + white },
    top: if y > 0 { 0.5pt + white },
  ),
  [*Effect*], [*Description*], [*Ob Per Level*],
  [Duration], [Per round.], [+1],
  [Duration], [Per Hour.], [+2],
  [Duration], [Per-manent.], [+4],
  [Distance], [Per Will's Quantity of distance.], [+1],
  [Imposed Ob level], [Per level of Ob you are imposing on the target.], [+1 $1/3$],
  [Mass], [Per Will's Quantity $times$ 5 in Kilograms.], [+1],
)]

=== Elements

The Arcane Elements define what a spell fundamentally _is_. To manifest an
Element, a caster must *Understand* it through practice and developing their
grasp of the Arcane Impeti.

#align(center)[#table(
  columns: (auto, 1fr),
  inset: 5pt,
  align: (center + horizon, left),
  stroke: (x, y) => (
    left: if x > 0 { 0.5pt + white },
    top: if y > 0 { 0.5pt + white },
  ),
  [*Element*], [*Description*],
  [Animus], [Consciousness. Animate objects, interact with spirits, telepathy.],
  [Ice],
  [The absence of Fire; quieting of matter. Freeze objects, extinguish
    fires, cool burns.],

  [Earth], [Solid matter. Create metals, dirt, and transform states to solid.],
  [Force], [Pure energy. Push things, create barriers, propel yourself.],
  [Fire],
  [Excitement of matter; the element of gasses. Start fires, warm
    oneself, temporal trickery.],

  [Life], [The element of action. Heal Injuries, manipulate nature.],
  [Lightning],
  [Electricity and plasma. Electrocute, excite the air, create
    plasmas.],

  [Light], [Energy. Blind foes, illuminate, scry.],
  [Sound],
  [Vibrations. Deafen foes, deliver audible messages, shake
    structures.],

  [Water], [Liquids. Create water, control fluid flow, perform hydrolysis.],
)]

Choosing Sorcery as a Major skill automatically grants the character two
understood Elements, with more becoming available as it makes sense in the
story.

=== Impeti in Combat

Each Impetus plays differently in combat, having its own set of unique rules and
interactions. The following sections detail how each Impetus functions in combat,
along with examples.

==== Destroy

Destroy forces an Element outward chaotically, dealing damage. The caster rolls
Will as base damage, which is then computed with the standard damage formula:

$ round(("Will roll" + sum "flat modifiers") times product "% modifiers") = "Final damage" $

Sorcery Talents and spell effects may add flat or percentage modifiers, just as
weapon Talents do.

#v(-10pt)

#align(center)[#block(breakable: false)[#table(
  columns: (auto, 1fr, auto),
  inset: 5pt,
  align: (center + horizon, left, center + horizon),
  stroke: (x, y) => (
    left: if x > 0 { 0.5pt + white },
    top: if y > 0 { 0.5pt + white },
  ),
  [*Modifier*], [*Description*], [*Ob*],
  [Targets], [Per additional target.], [+1/per],
  [All Targets], [All enemy targets in melee.], [+4],
  [+% / Success Over], [+10% damage / success over.], [+1/per],
)]]

#v(-10pt)

#align(center)[
  #talent(
    "Destroy",
    1,
    "Sorcery",
    "Sorcery",
    [Cast a Destroy spell at 100% damage.],
    height: auto,
  )
]

#v(-10pt)

#slantedColorbox(title: "Destroy Example", width: auto, radius: 0pt, color: black)[
  #set text(size: 9pt)
  _Vel, a novice sorcerer is at *Ranged* distance, and uses the Destroy Talent
  (1 AP) to hurl a bolt of fire at a bandit. He chooses: Destroy (+1 Ob),
  Projectile (+1 Ob, required at Ranged), Fire (+0 Ob), and adds 1 level of +10%
  damage / success over (+1 Ob). The spell's total Ob is *3*._

  _He rolls Sorcery and gets 4 successes. Since $4 >= 3$, the spell
  is cast with *1 success over* the Ob, adding 1 level of +10% damage._

  _His 4 successes become the Ob for the bandit's defense. The bandit rolls
  Evasion (determined by Projectile) and gets 3 successes — less than 4, so
  the spell lands._

  _Vel rolls Will at $B 6$ and gets 5 successes for base damage:_
  $
    overbracket(5, "Will" #linebreak() "roll")
    #h(-2pt) times #h(-3pt)
    overbracket(1.1, "+10%" #linebreak() "damage")
    #h(-2pt) =
    overbracket(round(5.5) = 6, "Final" #linebreak() "damage")
  $
]

==== Unleash

Unleash forces the caster's Will upon a target. It follows the standard casting
resolution — Sorcery vs spell Ob, then total successes become the defender's
Ob — but adds a third step: *Will vs Will*. If the defender fails the
Manifestation defense, the caster and target both roll Will against each other.

Unleash has two forms: *Assault* and *Domination*.

#align(center)[#block(breakable: false)[#table(
  columns: (auto, 1fr, auto),
  inset: 5pt,
  align: left,
  stroke: (x, y) => (
    left: if x > 0 { 0.5pt + white },
    top: if y > 0 { 0.5pt + white },
  ),
  [*Form*], [*Description*], [*Ob*],
  [Assault],
  [Inflict Injury on the target. +1 Injury/success over (Will vs
    Will). If the caster loses, the caster takes +1 Injury/success over
    instead.],
  [+2],

  [Domination],
  [Turn the target into an ally. 1 turn/success over (Will vs
    Will). If the caster loses, the caster is dominated for 1 turn/success
    over instead.],
  [+4],
)]]

==== Control

Control exerts power over an Element to complete a task. Outside of combat, the
GM sets the Ob based on the complexity and scale of the task. In combat, healing
is the primary use: the caster rolls Will and restores that many HP to the
target.

==== Enchant

Enchant injects an Element into equipment, granting it magical properties. All
enchantments use the Duration table to determine how long the effect persists.
Enchant talents target either a weapon or a piece of armor, and the caster
chooses which stat to apply the enchantment to. All multipliers and bonuses from
enchantments stack.

#align(center)[#block(breakable: false)[#table(
  columns: (auto, 1fr, auto),
  inset: 5pt,
  align: left,
  stroke: (x, y) => (
    left: if x > 0 { 0.5pt + white },
    top: if y > 0 { 0.5pt + white },
  ),
  [*Duration*], [*Description*], [*Ob*],
  [Short], [Per round.], [+1],
  [Hours], [Lasts for hours.], [+2],
  [Permanent], [Lasts until dispelled.], [+4],
)]]

=== Create




#pagebreak()
