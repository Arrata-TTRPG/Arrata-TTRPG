// ── Constants ────────────────────────────────────────────────────────────────

/// Weapon/Talent type constants.
#let melee = "Melee"
#let ranged = "Ranged"

/// Grip constant for weapon tags.
#let two-handed = "Two-handed"

// ── Shared internals ────────────────────────────────────────────────────────
#let body-inset = 6mm
#let ann = rgb("#ff4444")

/// Tries progressively smaller text sizes until content fits the container.
#let fit-text(body, max-size: 12pt, min-size: 7pt, step: 0.5pt) = {
  layout(size => context {
    let n = int((max-size - min-size) / step) + 1
    let sizes = range(n).map(i => max-size - i * step)
    let fitting = sizes.filter(s => {
      measure(block(width: size.width)[#text(size: s)[#body]]).height <= size.height
    })
    let final-size = if fitting.len() > 0 { fitting.first() } else { min-size }
    text(size: final-size)[#body]
  })
}

/// Returns a string of AP symbols: ◆ per point, V per 5 points.
#let ap-symbols(ap) = {
  let result = ""
  for _ in range(calc.floor(ap / 50)) { result += "♥" }
  ap = calc.rem(ap, 50)
  for _ in range(calc.floor(ap / 10)) { result += "♠" }
  ap = calc.rem(ap, 10)
  for _ in range(calc.floor(ap / 5)) { result += "♣" }
  for _ in range(calc.rem(ap, 5)) { result += text(baseline: -1.5pt)[◆] }
  result
}

/// Joins an array of content/strings with `  ·  ` separators.
#let dot-join(parts) = {
  parts.filter(p => p != none).join([#h(4pt)·#h(4pt)])
}

// ── Card shell ──────────────────────────────────────────────────────────────

/// Base card shell. Colors inherit from `#set text(fill: ...)`.
///
/// - name (content): Header left side.
/// - right-label (content): Header right side.
/// - main (content): Main body content.
/// - note (content, none): Optional note in the body area.
/// - height (length): `100%` for grid use, `auto` for standalone.
#let card-shell(name, right-label, main, note: none, height: 100%) = context {
  let fg = text.fill
  block(
    width: if height == auto { 74.25mm } else { 100% },
    height: height,
    stroke: (paint: fg, thickness: 1pt, dash: "loosely-dotted"),
    inset: 0pt,
  )[
    #grid(
      columns: (1fr,),
      rows: (auto, if height == auto { auto } else { 1fr }),
      stack(
        block(width: 100%, inset: (x: body-inset, top: body-inset / 2, bottom: 6pt))[
          #grid(
            columns: (1fr, auto),
            align: (left + horizon, right + horizon),
            name, right-label,
          )
        ],
        line(length: 100%, stroke: 0.5pt + fg),
      ),
      if height == auto {
        block(width: 100%, inset: (x: body-inset, top: 6pt, bottom: 10pt))[
          #if note != none {
            align(left)[#note]
          }
          #align(center + top)[#main]
        ]
      } else {
        block(width: 100%, height: 100%, inset: 0pt)[
          #grid(
            columns: (1fr,),
            rows: if note != none { (auto, 1fr) } else { (1fr,) },
            ..if note != none {(
              block(width: 100%, inset: (x: body-inset, top: 4pt))[
                #align(left)[#note]
              ],
            )},
            align(center + horizon, block(inset: (x: body-inset, y: 4pt))[#main]),
          )
        ]
      },
    )
  ]
}

// ── Annotation helpers ──────────────────────────────────────────────────────

/// Overbracket annotation: red math bracket with label above content.
/// Pass `size`, `weight`, `style` to format the content inside math mode.
#let ob(content, label, size: 10pt, weight: "regular", style: "normal") = context {
  let fg = text.fill
  text(fill: ann)[$overbracket(
    #text(fill: fg, size: size, weight: weight, style: style, font: "Fira Sans")[#content],
    upright(#pad(top: 10pt)[#text(size: 10pt)[#label]])
  )$]
}

/// Underbracket annotation: red math bracket with label below content.
/// Pass `size`, `weight`, `style` to format the content inside math mode.
#let ub(content, label, size: 10pt, weight: "regular", style: "normal") = context {
  let fg = text.fill
  text(fill: ann)[$underbracket(
    #text(fill: fg, size: size, weight: weight, style: style, font: "Fira Sans")[#content],
    upright(#pad(bottom: 10pt)[#text(size: 10pt)[#label]])
  )$]
}

// ── Card types ──────────────────────────────────────────────────────────────

/// Renders a Talent card.
///
/// All parameters accept strings or pre-formatted content (e.g. `ob()` wrappers).
///
/// - name (str, content): Talent name.
/// - ap (int, content): AP cost as integer, or pre-formatted content for annotations.
/// - w-type (str, content, none): "Melee"/"Ranged" or `melee`/`ranged` constants.
/// - skill (str, content, none): Required skill name (e.g. "Blade").
/// - effect (str, content): Mechanical effect text.
/// - notes (array): Additional notes (e.g. equipment requirements). Rendered on line 2.
/// - height (length): `100%` for grid use, `auto` for standalone/annotated.
#let talent(name, ap, w-type, skill, effect, notes: (), height: 100%) = {
  let ap-content = if type(ap) == int {
    [#str(ap) AP #ap-symbols(ap)]
  } else { ap }

  let line1-parts = ()
  if w-type != none { line1-parts.push(w-type) }
  if skill != none {
    line1-parts.push(if type(skill) == str { [Skill: #skill] } else { skill })
  }

  let has-line1 = line1-parts.len() > 0
  let has-notes = notes.len() > 0

  let note-content = if has-line1 or has-notes {
    text(style: "italic", size: 11pt)[
      #if has-line1 { dot-join(line1-parts) }
      #if has-notes {
        if has-line1 { linebreak() }
        notes.join(linebreak())
      }
    ]
  } else { none }

  card-shell(
    text(weight: "bold", size: 16pt)[#name],
    text(weight: "bold", size: 14pt)[#ap-content],
    fit-text(effect),
    note: note-content,
    height: height,
  )
}

/// Renders a Weapon card.
///
/// All parameters accept strings or pre-formatted content (e.g. `ob()` wrappers).
///
/// - name (str, content): Weapon name.
/// - w-type (str, content): "Melee"/"Ranged" or `melee`/`ranged` constants.
/// - skill (str, content): Associated skill (e.g. "Blade", "Blunt", "Polearms").
/// - min-skill (str, content): Minimum skill level (e.g. "B3", "A2").
/// - base-dmg (str, content): Base damage value (e.g. "3").
/// - dmg-type (str, content): Damage type (e.g. "Physical", "Fire").
/// - stat-mod (str, content, none): Stat modifier added to damage (e.g. "Power").
/// - bonus (str, content): Per-success bonus text.
/// - effects (array): Additional effect strings shown below damage.
/// - tags (array): Short tags joined on note line 1 (e.g. `(two-handed,)`).
/// - notes (array): Longer notes shown on note line 2+ (e.g. one-handed usage).
/// - height (length): `100%` for grid use, `auto` for standalone/annotated.
#let weapon(
  name,
  w-type,
  skill,
  min-skill,
  base-dmg,
  dmg-type,
  stat-mod: none,
  bonus: "+10%/Success over",
  effects: (),
  tags: (),
  notes: (),
  height: 100%,
) = {
  // Build note area
  let line1-parts = (skill, min-skill, ..tags)
  let has-notes = notes.len() > 0

  let note-content = text(style: "italic", size: 11pt)[
    #dot-join(line1-parts)
    #if has-notes {
      linebreak()
      notes.join(linebreak())
    }
  ]

  // Build damage display
  let dmg-content = stack(
    spacing: 5pt,
    if stat-mod != none {
      stack(
        dir: ltr,
        spacing: 4pt,
        text(weight: "bold", size: 31pt)[#base-dmg],
        align(horizon, text(weight: "bold", size: 16pt)[#sym.plus #stat-mod]),
      )
    } else {
      text(weight: "bold", size: 31pt)[#base-dmg]
    },
    text(size: 12pt)[#dmg-type],
    text(size: 11pt, style: "italic")[#bonus],
    ..effects.map(e => text(size: 11pt)[#e]),
  )

  card-shell(
    text(weight: "bold", size: 16pt)[#name],
    text(weight: "bold", size: 14pt)[#w-type],
    dmg-content,
    note: note-content,
    height: height,
  )
}

/// Renders an Armor card.
///
/// All parameters accept strings or pre-formatted content (e.g. `ob()` wrappers).
///
/// - name (str, content): Armor name.
/// - effects (array): List of effect strings shown centered.
/// - notes (array): Optional restriction notes shown top-left.
/// - height (length): `100%` for grid use, `auto` for standalone/annotated.
#let armor(name, effects, notes: (), height: 100%) = card-shell(
  text(weight: "bold", size: 16pt)[#name],
  [],
  stack(spacing: 5pt, ..effects.map(e => text(size: 12pt)[#e])),
  note: if notes.len() > 0 {
    text(style: "italic", size: 11pt)[#notes.join(linebreak())]
  } else { none },
  height: height,
)
