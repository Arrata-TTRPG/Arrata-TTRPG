#import "../typst-boxes.typ": *

== Arcana <arcana>

// TODO: This section has been ported from the original guide and contains
// references to mechanics that no longer exist in the current system.
// Each incongruity is marked with a TODO comment. Review and reconcile
// these with the current combat system before publishing.

*Arcana* is a subsystem that allows for the custom creation of spells and
manipulation of the world through Will and Conscious. Arcana and spells are
cast with the *Sorcery* skill, which requires the *Gifted* Quirk.

To cast a spell, sum the relevant Obstacles from each component of the spell
to determine its final Obstacle, then roll Sorcery against it.

=== Armor Interference

Wearing any armor imposes +1 Ob per Quantity of Armor to spell casting. This
includes broken armor but only applies to physically worn armors, not magical
armor or environmental protection.

// TODO: The current combat system defines armor as flat/percentage damage
// reduction, not as a Quantity value. Reconcile "per Quantity of Armor" with
// the new armor card system.

=== Building a Spell

Each spell is assembled from several components, each contributing to the final
Obstacle:

- *Arcane Impeti* — How you are using an element.
- *Arcane Manifestations* — How the element appears in the world.
- *Ranges and Areas* — The range and area a spell travels or affects.
- *Arcane Effects* — The magnitude of the spell's manifestation.
- *Special Modifiers* — Optional modifications to the spell.
- *Elements* — The fundamental building block being manifested.

=== Arcane Impeti

Arcane Impeti are the foundations of spellcraft. Each provides a broad category
of what can be done with Arcana:

- *Influence* — Communicate ideas: scrying, telepathy, and subtle manipulation
  of people.
- *Control* — Exert power over an Element to complete a task: mend a wound,
  start a fire, freeze a stream.
- *Create* — Manifest an Element permanently into the world. Taxing and
  dangerous; the Element persists until dispelled. Used for elemental shields,
  producing water, and forming complex objects.
- *Destroy* — Force an Element outward chaotically, dealing damage. Used for
  fireballs, blinding light, and withering plant life.
- *Enchant* — Inject an Element into the world: subtle influence, conditional
  triggers (on hit, on proximity), and hardening or softening objects.
- *Unleash* — The most personal and powerful Impetus. Relies entirely on the
  caster's Will to dominate an opponent, imposing a Will check. On failure, the
  target gains Sickness equal to Unleash's Sickness value, and the caster may
  issue commands for the spell's duration.

=== Arcane Manifestations

Manifestations define how a spell appears and interacts with the world:

- *Projectile* — Manifests from the caster toward a target. Requires a Range
  modifier. Can be modified with the Targets effect to hit multiple targets.
- *Touch* — Manifests from the caster's contact. No range cost.
- *Telepathic* — Mind-to-mind manifestation over distance. Follows the same
  rules as Projectile but may pass through obstacles.
- *Telekinetic* — Manifests at a distance from the caster for non-mental effects:
  explosions, moving objects, etc.
- *Aura* — Manifests in the environment, centered on the caster. Requires an
  Area modifier but triples the intended radius (10 ft becomes 30 ft, 30 ft
  becomes 90 ft, etc.).

=== Ranges and Areas

*Range* determines how far away magic manifests. Anything past 150 ft is
effectively too difficult to manifest.

// TODO: The original guide contained a chart image for range/area Ob values.
// Reproduce this as a Typst table or reference a card.

*Area* defines how large a spell's effect is. Interactions with Area depend on
the Impetus and Effect used:

- With Destroy and Amount: affected targets must roll Speed against the spell's
  Ob. Successes reduce damage by a factor of $1 / (2 + "successes over")$.
  The caster's spell Ob must exceed the target's total armor for the check to
  have a non-zero Obstacle.
- With healing: each target receives $1/2 + "successes over"$ Health.
- With Level effects (e.g. Unleash on an area): the Ob is not modified;
  instead, each affected person gains advantage equal to the number of other
  people in the area.

// TODO: "Speed against the spell's Ob" — in the new system, Evasion is the
// defensive roll in combat. Decide whether Arcana uses Evasion or Speed here.
// TODO: "total armor" — new armor is flat/% reduction, not a total. Reconcile.
// TODO: Healing formula references "Health" differently than the current
// Health = 2×Will + 4×Forte formula. Verify interaction.

=== Arcane Effects

Arcane Effects give spells their mechanical impact:

- *Amount* — A numerical value: damage dealt or health healed. The Ob scales at
  1 per Will Quantity.
- *Distance* — How far the spell affects something: pushing an object,
  teleporting a person. Relative to the scale in use (squares, miles, etc.).
- *Level* — Used to overcome a task or impose an Obstacle: unlocking a lock,
  healing Injuries, imposing a Will check with Unleash.
- *Mass* — The mass of an object affected. Used for Create, moving objects (in
  conjunction with Distance), and applying equivalent force.
- *Targets* — The number of individuals targeted past one. Going from 1 (+0 Ob)
  to 2 (+2 Ob) is costlier than from 2 (+2 Ob) to 3 (+3 Ob).

// TODO: Amount originally referenced "Midi value for an IMS roll" — IMS does
// not exist in the current combat system. Redefine Amount's damage scaling.
// TODO: The Ob chart for each effect was an image in the original document.
// Reproduce as Typst tables.

=== Elements

The Arcane Elements define what a spell fundamentally _is_. To manifest an
Element, a caster must *Understand* it through practice and developing their
grasp of the Arcane Impeti.

- *Animus* — Consciousness. Animate objects, interact with spirits, telepathy.
- *Cold* — The absence of Heat; quieting of matter. Freeze objects, extinguish
  fires, cool burns.
- *Earth* — Solid matter. Create metals, dirt, and transform states to solid.
- *Force* — Pure energy. Push things, create barriers, propel yourself.
- *Heat* — Excitement of matter; the element of gasses. Start fires, warm
  oneself, temporal trickery.
- *Life* — The element of action. Heal Injuries, manipulate nature.
- *Lightning* — Electricity and plasma. Electrocute, excite the air, create
  plasmas.
- *Light* — Energy. Blind foes, illuminate, scry.
- *Sound* — Vibrations. Deafen foes, deliver audible messages, shake structures.
- *Water* — Liquids. Create water, control fluid flow, perform hydrolysis.

Choosing Sorcery as a Major skill automatically grants the character two
understood Elements, with more becoming available as it makes sense in the
story.

=== The Sickness

The Sickness is the magical tax imposed by the inefficient nature of raw Arcana.
It is a single value that both adds to the Ob of spells and subtracts from
Forte's Quantity. If Sickness reduces Forte to 0, the character is incapacitated;
at $-1$, they die.

Every time a spell is cast, roll Forte against the spell's Ob. Failure increases
Sickness by 1.

If a spell _fails to be cast_ (successes fell short of the Ob), the caster gains
Sickness equal to the Impetus's listed Sickness value outright, _and_ must still
roll Forte against the spell's Ob at their now-reduced Quantity.

// TODO: Sickness reducing Forte interacts with Health (2×Will + 4×Forte).
// Confirm that Sickness reduces current Forte for Health calculation purposes.

=== Offense

When casting a spell against an opponent, there are three modes of attack:

==== Direct Manifestation

Physically manifesting an element from a point to the target. The caster _must_
roll higher than the defender's Evasion. Additional successes over Evasion
force breakage rolls on the target's armor.

// TODO: "force breakage rolls" — the new armor system uses flat/% reduction,
// not breakage. Reconcile or remove.

==== Area Effect

If an enemy is within a spell's area of effect, the caster's successes must
exceed the defender's Evasion. If so, the defender must make a Speed check
against the spell's Ob. Success reduces damage by $1 / (2 + "successes over")$.

// TODO: Same Evasion/Speed question as above.

==== Mental Assault (Unleash)

Using Unleash with Telepathy and the Level effect. If the spell is successfully
cast, the target must surpass the specified Level as an Ob using their Will, or
they receive Sickness equal to Unleash's listed value. The caster may also issue
commands for the spell's duration.

#pagebreak()
