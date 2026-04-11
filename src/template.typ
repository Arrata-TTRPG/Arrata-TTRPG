// hydra for advanced headers
#import "@preview/hydra:0.6.1": hydra

// This function gets your whole document as its `body` and formats
// it as a simple fiction book.
#let book(
  // The book's title.
  title: [Book Title],
  // The book's author.
  author: "Author",
  // The paper size to use.
  paper: "a5",
  // A dedication to display on the third page.
  dedication: none,
  // Details about the book's publisher that are
  // display on the second page.
  publishing-info: none,
  // The logo to use.
  logo: none,
  // The version of the book.
  version: "v0.0.0",
  // The book's content.
  body,
) = {
  // Set the document's metadata.
  set document(title: title, author: author)

  set text(size: 12pt, font: "Fira Sans", fill: white)

  // Configure the page properties.
  set page(paper: paper, margin: (bottom: 1.75cm, top: 2.25cm), fill: black)

  // The first page.
  page(align(center + horizon)[
    #text(font: "Fira Sans")[
      #image(logo)
      #text(1.2em, author)
      #v(0.25em)
      #text(1em, version)
    ]
  ])

  // Display publisher info at the bottom of the second page.
  if publishing-info != none {
    align(center + bottom, text(0.8em, publishing-info))
  }

  pagebreak()

  // Display the dedication at the top of the third page.
  if dedication != none {
    v(15%)
    align(center, strong(dedication))
  }

  // Configure paragraph properties.
  set par(leading: 0.65em, spacing: 2em, justify: true)

  // Start with an outline.
  outline(title: [Table of Contents], indent: 2em)

  // Configure page properties.
  set page(numbering: "1", header: context {
    text(1em, smallcaps(title))

    h(1fr) + text(0.95em, smallcaps(emph(hydra())))
  })

  set heading(numbering: "1.1")
  show heading: set text(font: "FiraCode Nerd Font")

  // Configure headings: level 1 as full-page Part dividers, others inline.
  show heading: it => {
    if it.level == 1 {
      pagebreak(weak: true)
      align(center + horizon)[
        #let roman = counter(heading).display("I")
        #text(size: 28pt, weight: "bold")[#roman]
        #v(0.3em)
        #text(size: 20pt)[— #it.body —]
      ]
      pagebreak()
    } else {
      let number = if it.numbering != none {
        counter(heading).display(it.numbering)
        h(7pt, weak: true)
      }

      text(block([#number #it.body]))
      v(0.5em)
    }
  }

  // Configure references

  show ref: it => {
    let el = it.element
    if el != none and el.func() == heading {
      let nums = counter(heading).at(el.location())
      let number = numbering(el.numbering, ..nums)
      link(el.location(), [#el.supplement #number: #el.body])
    } else {
      it
    }
  }


  body
}

