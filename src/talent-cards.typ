// ── Shared constants ─────────────────────────────────────────────────────────
#let card-w = 88mm
#let body-inset = 6mm
#let dot-stroke = (paint: white, thickness: 0.5pt, dash: "dotted")
#let ann = rgb("#ff4444")

/// Returns a string of AP symbols: ◆ per point, V per 5 points.
/// e.g. 7 AP → "V◆◆"
#let ap-symbols(ap) = {
  let result = ""
  for _ in range(calc.floor(ap / 5)) { result += "V" }
  for _ in range(calc.rem(ap, 5)) { result += "◆" }
  result
}

/// Main content area: optional italic note top-left, content below.
#let main-area(content, note: none) = {
  if note != none {
    stack(spacing: 4pt, align(left)[#note], align(center)[#content])
  } else { align(center)[#content] }
}

/// Base card shell. All card types are built on this.
///
/// - name (content): Header left side.
/// - right-label (content): Header right side.
/// - main (content): Main body content.
/// - tag (content, none): Optional italic tag row below header.
#let card-shell(name, right-label, main, tag: none) = block(
  width: card-w,
  stroke: (paint: white, thickness: 1pt, dash: "dotted"),
  inset: 0pt,
)[
  #grid(
    columns: (1fr,),
    rows: (auto, if tag != none { auto } else { 0pt }, auto),
    stack(
      block(width: 100%, inset: (x: body-inset, top: body-inset, bottom: 3pt))[
        #grid(
          columns: (1fr, auto),
          align: (left + horizon, right + horizon),
          name, right-label,
        )
      ],
      line(length: 100%, stroke: 0.5pt + white),
    ),
    if tag != none {
      stack(
        block(width: 100%, inset: (x: body-inset, y: 2pt))[
          #text(style: "italic", size: 9pt, fill: white)[#tag]
        ],
        line(length: 100%, stroke: dot-stroke),
      )
    },
    block(width: 100%, inset: (x: body-inset, y: 6pt))[#main],
  )
]

/// Annotated card shell: same as card-shell but with extra bottom padding
/// so underbracket labels don't clip the card border.
#let ann-card-shell(name, right-label, main, tag: none) = block(
  width: card-w,
  stroke: (paint: white, thickness: 1pt, dash: "dotted"),
  inset: 0pt,
)[
  #grid(
    columns: (1fr,),
    rows: (auto, if tag != none { auto } else { 0pt }, auto),
    stack(
      block(width: 100%, inset: (x: body-inset, top: body-inset, bottom: 3pt))[
        #grid(
          columns: (1fr, auto),
          align: (left + horizon, right + horizon),
          name, right-label,
        )
      ],
      line(length: 100%, stroke: 0.5pt + white),
    ),
    if tag != none {
      stack(
        block(width: 100%, inset: (x: body-inset, y: 2pt))[
          #text(style: "italic", size: 9pt, fill: white)[#tag]
        ],
        line(length: 100%, stroke: dot-stroke),
      )
    },
    block(width: 100%, inset: (x: body-inset, top: 6pt, bottom: 10pt))[#main],
  )
]

/// Annotation helper: overbracket with red bracket and label.
#let ob(content, label) = text(fill: ann)[
  $overbracket(#text(fill: white)[#content], upright(#text(size: 8pt)[#label]))$
]

/// Annotation helper: underbracket with red bracket and label.
#let ub(content, label) = text(fill: ann)[
  $underbracket(#text(fill: white)[#content], upright(#text(size: 8pt)[#label]))$
]

// ── Card types ────────────────────────────────────────────────────────────────

/// Renders a Talent card.
///
/// - name (str): Talent name.
/// - ap (int): AP cost.
/// - skill (str, none): Required weapon skill shown next to name, or none.
/// - equip (str, none): Required equipment note shown italic top-left, or none.
/// - effect (str): Mechanical effect.
#let talent(name, ap, skill, equip, effect) = {
  let title = if skill != none {
    [#text(weight: "bold", size: 13pt, fill: white)[#name]#text(size: 10pt, style: "italic", fill: white)[ · #skill]]
  } else {
    text(weight: "bold", size: 13pt, fill: white)[#name]
  }
  card-shell(
    title,
    text(weight: "bold", size: 12pt, fill: white)[#str(ap) AP #ap-symbols(ap)],
    main-area(
      text(size: 10pt, fill: white)[#effect],
      note: if equip != none { text(style: "italic", size: 9pt, fill: white)[#equip] } else { none },
    ),
  )
}

/// Renders a Weapon card.
///
/// - name (str): Weapon name.
/// - w-type (str): "Melee", "Ranged", or "Special".
/// - skill (str): Associated skill (e.g. "Blade").
/// - min-skill (str): Minimum skill level required (e.g. "B3", "A2").
/// - dmg (str): Damage value, may include stat modifier (e.g. "3 + Power").
/// - dmg-type (str): Damage type (e.g. "Physical", "Fire").
/// - effects (array): Optional additional effects (e.g. ("-1 Evasion",)).
/// - bonus (str): Per-success bonus (default "+10%/Success over").
/// - one-handed (str, none): One-handed penalty note, or none.
#let weapon(
  name,
  w-type,
  skill,
  min-skill,
  dmg,
  dmg-type,
  effects: (),
  bonus: "+10%/Success over",
  one-handed: none,
) = {
  let dmg-content = stack(
    spacing: 4pt,
    context {
      let parts = dmg.split(" + ")
      if parts.len() == 2 {
        stack(dir: ltr, spacing: 4pt, text(parts.at(0), weight: "bold", size: 26pt, fill: white), align(horizon, text(
          sym.plus + " " + parts.at(1),
          weight: "bold",
          size: 13pt,
          fill: white,
        )))
      } else { text(dmg, weight: "bold", size: 26pt, fill: white) }
    },
    text(size: 10pt, fill: white)[#dmg-type],
    text(size: 9pt, style: "italic", fill: white)[#bonus],
    ..effects.map(e => text(size: 9pt, fill: white)[#e]),
  )
  card-shell(
    text(weight: "bold", size: 13pt, fill: white)[#name],
    text(weight: "bold", size: 12pt, fill: white)[#w-type],
    main-area(
      dmg-content,
      note: if one-handed != none { text(style: "italic", size: 9pt, fill: white)[#one-handed] } else { none },
    ),
    tag: skill + " · " + min-skill,
  )
}

/// Renders an Armor card.
///
/// - name (str): Armor name.
/// - effects (array): List of effect strings.
/// - note (str, none): Optional restriction note (e.g. "Cannot use with two-handed weapons.").
#let armor(name, effects, note: none) = card-shell(
  text(weight: "bold", size: 13pt, fill: white)[#name],
  [],
  main-area(
    stack(spacing: 4pt, ..effects.map(e => text(size: 10pt, fill: white)[#e])),
    note: if note != none { text(style: "italic", size: 9pt, fill: white)[#note] } else { none },
  ),
)
