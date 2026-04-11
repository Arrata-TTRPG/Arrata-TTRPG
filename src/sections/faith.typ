#import "../typst-boxes.typ": *

== Faith <faith>

// TODO: Ported from the original guide. Fewer mechanical conflicts than Arcana,
// but review each TODO before publishing.

*Faith* is a spiritual connection to a god or gods. It functions as a meta-skill
that allows a player to communicate directly to the GM from their character and
gain boons such as *Insights* and *Miracles*. Angering your god or patron,
however, invokes their *Wrath*. Faith requires the *Blessed* Quirk to use.

Faith stands apart from Arcana in that it does not govern spell crafting.
Instead, it governs *Prayer* and *Belief*. It is also an excellent vehicle for
developing a character's Quirks, as the GM can offer Challenges specific to a
character's god.

=== Prayer

Prayer is a direct, one-way message to your god — a request for Divine
Intervention. When a Prayer is made, the player must state exactly what is being
asked for, their intent, and what the character says aloud or in thought.

Completely outlandish Prayers — an infinite font of gold, eternal life — can be
ignored by the GM outright. Such requests are undeserving of a mortal.

Prayer is more open-ended than Sorcery: it is both an open-ended roll and
entirely up to the imagination. The GM assigns an Obstacle for the Prayer, or
allows it to be open-ended, depending on the scale of the Divine Intervention
requested. As a general guide:

#align(center)[#table(
  columns: (auto, 1fr),
  inset: 5pt,
  align: left,
  stroke: (x, y) => (
    left: if x > 0 { 0.5pt + white },
    top: if y > 0 { 0.5pt + white },
  ),
  [*Ob*], [*Scale of Intervention*],
  [1], [A chain loosens, a candle lights.],
  [2], [Water becomes wine, an apple becomes iron.],
  [3], [A person is distracted, a door unlocked.],
  [4], [A door fades from existence, a wound is healed.],
  [5], [A mystery is revealed, the sky clouds and rain pours forth.],
  [6], [Time is slowed, a river is bridged.],
  [7], [A plague is cured, water is made walkable.],
  [8], [A great mystery is revealed.],
  [9], [A powerful opponent is banished to another plane, the sky rains gold.],
)]

// TODO: "a wound is healed" at Ob 4 — confirm this interacts correctly with
// the current Injury/Recovery system (Medicine vs Injury Ob). Does Prayer
// bypass the Recovery roll entirely, or does it substitute for it?

=== Belief

Belief is the passive effect of a character's devotion — a measure of how much
they give to their god and how favourably their god regards them. It is not a
stat or a number; it is a favour system. Complete a task for your god and, at a
later time of great danger, call upon them for Divine Intervention _without_ a
Faith roll.

How fickle or lenient a god is rests with the GM. Appease them as much as
possible.

=== Wrath

Wrath is divine vengeance for wrongdoing or infidelity. Acts that oppose a god's
wishes, defy their demands, or conflict with their nature invoke their Wrath.

Wrath is a measure of negative favours — the GM tracks these transgressions and
deploys them at the most critical and punishing moments. Minor Wrath might
manifest as increasing the Ob of a roll, darkening a room, rejecting a small
Prayer, or offering false omens.

If a character has truly angered their god, the entity may act directly:
striking the character down, permanently reducing their Faith skill, or worse.
The GM dishes out these punishments, and the player helps moderate how their god
would react.

#pagebreak()
