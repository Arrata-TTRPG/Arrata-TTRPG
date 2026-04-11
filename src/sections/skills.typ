#import "../typst-boxes.typ": *

= Skills

This section details each skill, its roots, and its applications. A skill's
roots determine its starting Quality and Quantity as described in the Characters
chapter.

#slantedColorbox(title: "Alchemy", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  #set par(spacing: 8pt)
  *Root(s)*: Conscious

  // TODO: Fill this out.
]

#slantedColorbox(title: "Animals", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  #set par(spacing: 8pt)
  *Root(s)*: Will, Perception

  Your ability to work with, tame, and understand animals. Applies equally to
  combat-adjacent tasks like skinning and harvesting as it does to caring for
  and training them.
]

#slantedColorbox(title: "Archery", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  #set par(spacing: 8pt)
  *Root(s)*: Perception, Forte

  Covers ranged weapons that use a drawn string to launch projectiles: shortbows,
  longbows, recurve bows, and similar weapons.
]

#slantedColorbox(title: "Athletics", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  #set par(spacing: 8pt)
  *Root(s)*: Speed, Forte

  Governs physical swiftness and nimbleness outside of direct combat: fleeing an
  enemy, climbing a building, swimming across a river, or any feat of raw
  physical movement.
]

#slantedColorbox(title: "Blade", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  #set par(spacing: 8pt)
  *Root(s)*: Power, Speed

  Covers bladed melee weapons such as daggers, shortswords, longswords, rapiers,
  scimitars, and greatswords.
]

#slantedColorbox(title: "Blunt", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  #set par(spacing: 8pt)
  *Root(s)*: Power

  Covers impact-focused melee weapons such as maces, mauls, clubs, flails,
  morning stars, and war hammers.
]

#slantedColorbox(title: "Brawling", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  #set par(spacing: 8pt)
  *Root(s)*: Power, Forte

  Covers unarmed melee combat: boxing, wrestling, grappling, and similar
  techniques. Unarmed strikes are governed by Brawling.
]

#slantedColorbox(title: "Cooking", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  #set par(spacing: 8pt)
  *Root(s)*: Will, Conscious

  Allows you to prepare meals from available ingredients. The GM assigns an
  Obstacle based on the complexity of the dish and the quality of the
  ingredients. Failure produces burnt or nearly inedible food. Meeting or
  exceeding the Obstacle grants: // TODO: Define meal boons.
]

#slantedColorbox(title: "Crafting", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  #set par(spacing: 8pt)
  *Root(s)*: Will, Conscious

  An open-ended skill covering everything from carpentry to blacksmithing to
  tailoring. Given sufficient resources, the GM assigns an Obstacle based on the
  difficulty and scale of the task. Some representative examples, roughly ordered
  by Obstacle:

  #table(
    columns: (auto, 1fr),
    inset: 5pt,
    align: left,
    stroke: (x, y) => (
      left: if x > 0 { 0.5pt + white },
      top: if y > 0 { 0.5pt + white },
    ),
    [*Ob*], [*Example*],
    [1], [An arrow. A lockpick. Caltrops. An eyepatch.],
    [2], [Bandages. A canoe. A spear. Standard clothing.],
    [3], [A wheel or axle. A lengthy rope. A shortbow or shortsword.],
    [4], [A boat or rivercraft. An intricate blade. Intricate clothing.],
    [5], [A cart or wagon. Part of a house.],
    [6], [A firearm or artillery piece. A sea-worthy ship.],
    [7], [Stone masonry such as a tower or castle.],
    [8+], [Mammoth tasks such as bridging between mountains.],
  )
]

#slantedColorbox(title: "Crossbow", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  #set par(spacing: 8pt)
  *Root(s)*: Perception

  Covers crossbows and similar mechanical ranged weapons.
]

#slantedColorbox(title: "Faith", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  #set par(spacing: 8pt)
  *Root(s)*: Will, Conscious

  #text(style: "italic")[Note: Faith requires the Blessed trait to use. Covered in its own section.]

  // TODO: Fill this out when the Faith section is written.
]

#slantedColorbox(title: "Firearms", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  #set par(spacing: 8pt)
  *Root(s)*: Perception

  Covers gunpowder-based ranged weapons such as hand cannons and similar firearms.
]

#slantedColorbox(title: "Gambling", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  #set par(spacing: 8pt)
  *Root(s)*: Perception, Conscious

  A social and mechanical skill dependent on the specific game being played.
  Where possible, playing the actual game at the table is recommended, with the
  character's Gambling skill providing mechanical advantages such as better odds
  or additional insight into opponents' hands.
]

#slantedColorbox(title: "Insight", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  #set par(spacing: 8pt)
  *Root(s)*: Perception, Conscious

  Your ability to read people. Roll Insight against a target's Conscious Quantity
  to discern one of their Quirks or to determine whether they are telling the
  truth. Insight checks can also contest an Intimidation check.
]

#slantedColorbox(title: "Intimidation", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  #set par(spacing: 8pt)
  *Root(s)*: Conscious, Power

  Uses your physique, tone of voice, and choice of words to compel someone to
  act against their better judgment. The GM sets the Obstacle, though the
  target's Will Quantity is a good baseline. Intimidation checks can be contested
  by Insight.
]

#slantedColorbox(title: "Investigation", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  #set par(spacing: 8pt)
  *Root(s)*: Perception, Conscious

  The art of seeking and finding information — tracing who stole from you,
  locating a missing item, or untangling a mundane mystery. The Obstacle is set
  by how difficult and convoluted the task is.
]

#slantedColorbox(title: "Lore", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  #set par(spacing: 8pt)
  *Root(s)*: Will

  Your character's knowledge of the world: religion, geography, history,
  politics, and esoteric subjects. The GM should consider how obscure the
  knowledge is, whether it is discernible without prior study, and how much is
  being asked at once. Lore is distinct from Insight when it comes to
  understanding a specific person.
]

#slantedColorbox(title: "Medicine", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  #set par(spacing: 8pt)
  *Root(s)*: Perception, Conscious

  Covers the treatment of Injuries and the restoration of Health outside of
  combat. Injury recovery is detailed in the Combat section. With sufficient
  medical supplies — which Alchemy and Crafting can provide — roll Medicine and
  restore successes $times$ Conscious Quantity Health to a target.
]

#slantedColorbox(title: "Nature", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  #set par(spacing: 8pt)
  *Root(s)*: Will

  Your understanding of the environment: plant life, terrain, weather, and
  wildlife. Used to identify the properties of herbs, read animal tracks, or
  navigate through wilderness. Useful for alchemists, hunters, and travellers
  alike.
]

#slantedColorbox(title: "Persuasion", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  #set par(spacing: 8pt)
  *Root(s)*: Perception, Conscious

  Your ability to convince others through reasoned argument, charm, or appeals to
  emotion. The GM sets the Obstacle based on how opposed the target is to what is
  being asked. Unlike Intimidation, Persuasion relies on genuine rapport rather
  than fear.
]

#slantedColorbox(title: "Polearms", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  #set par(spacing: 8pt)
  *Root(s)*: Power, Speed

  Covers long-hafted melee weapons such as spears, staves, halberds, and glaives.
]

#slantedColorbox(title: "Smithing", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  #set par(spacing: 8pt)
  *Root(s)*: Power, Forte

  Allows you to augment, repair, and maintain weapons and armor. With sufficient
  materials and tools, the GM assigns an Obstacle based on the complexity of the
  work.
]

#slantedColorbox(title: "Sorcery", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  #set par(spacing: 8pt)
  *Root(s)*: Will, Conscious

  #text(style: "italic")[Note: Sorcery requires the Gifted Quirk to use. Covered in its own section.]

  // TODO: Fill this out when the Sorcery section is written.
]

#slantedColorbox(title: "Stealth", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  #set par(spacing: 8pt)
  *Root(s)*: Perception, Speed

  Governs your ability to move without being detected: staying silent, hiding in
  cover, and following a target unseen. The GM sets the Obstacle based on the
  alertness of those you are hiding from and the environment you are moving
  through.
]

#slantedColorbox(title: "Survival", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  #set par(spacing: 8pt)
  *Root(s)*: Will, Conscious

  The practical skills of staying alive in hostile environments: finding food and
  water, building shelter, navigating without landmarks, and enduring harsh
  conditions.
]

#slantedColorbox(title: "Thievery", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  #set par(spacing: 8pt)
  *Root(s)*: Perception, Conscious

  Covers sleight of hand, pickpocketing, lockpicking, and other acts of manual
  dexterity used to take or access things that aren't yours.
]

#slantedColorbox(title: "Throwing", width: auto, radius: 0pt, color: black)[
  #set text(size: 10pt)
  #set par(spacing: 8pt)
  *Root(s)*: Power, Forte

  Covers ranged weapons hurled by hand: javelins, throwing axes, and similar
  projectiles.
]

#pagebreak()
