#import "typst-boxes.typ": *
#import "talent-cards.typ": *

// ── Talent Card Example ───────────────────────────────────────────────────────

#slantedColorbox(title: "Talent Card", width: auto, radius: 0pt, color: black)[
  #set text(size: 8pt)
  _Note: Red labels are annotations only and do not appear on the actual card._
  #v(4pt)
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

// ── Weapon Card Example ───────────────────────────────────────────────────────

#slantedColorbox(title: "Weapon Card", width: auto, radius: 0pt, color: black)[
  #set text(size: 8pt)
  _Note: Red labels are annotations only and do not appear on the actual card._
  #v(4pt)
  #align(center)[
    #pad(top: 14pt, left: 8pt, right: 8pt)[
      #ann-card-shell(
        text(weight: "bold", size: 13pt)[#ob("Longsword", "Name")],
        text(weight: "bold", size: 12pt)[#ob("Melee", "Weapon type")],
        main-area(
          stack(
            spacing: 10pt,
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
            text(size: 10pt)[#ub("Physical", "Damage type")],
            text(size: 9pt)[#ub("+10%/Success over", "Per-success bonus")],
          ),
          note: align(left)[#pad(bottom: 6pt)[#text(fill: ann)[$cases(
            delim: "[", reverse: #true, gap: 0% + 1em,
            #text(fill: white, style: "italic", size: 9pt)[May be used one-handed at -1 damage.]
          ) #h(2pt) #text(size: 7pt)[Special note]$]]],
        ),
        tag: pad(top: 10pt)[#text(fill: ann)[$overbracket(
            #text(fill: white)[Blade],
            upright(#text(size: 8pt, fill: ann)[Skill])
          )$] #text(fill: ann)[$overbracket(
            #text(fill: white)[· B3],
            upright(#text(size: 8pt, fill: ann)[Min. level])
          )$]],
      )
    ]
  ]
]

// ── Armor Card Example ────────────────────────────────────────────────────────

#slantedColorbox(title: "Armor Card", width: auto, radius: 0pt, color: black)[
  #set text(size: 8pt)
  _Note: Red labels are annotations only and do not appear on the actual card._
  #v(4pt)
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
