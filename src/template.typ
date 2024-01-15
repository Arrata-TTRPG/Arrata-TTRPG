// hydra for advanced headers
#import "@preview/hydra:0.3.0": hydra

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
  set page(
    paper: paper,
    margin: (bottom: 1.75cm, top: 2.25cm),
    fill: black,
  )

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
  set par(leading: 0.65em, justify: true)
  show par: set block(spacing: 2em)

  // Start with an outline.
  outline(title: [Table of Contents], indent: true)

  // Configure page properties.
  set page(
    numbering: "1",

    header: locate(loc => {
      text(1em, smallcaps(title))

      h(1fr) + text(0.95em, smallcaps(emph(hydra(loc: loc))))
    }),
  )

  set heading(numbering: "1.")

  // Configure chapter headings.
  show heading: it => {
    // Create the heading numbering.
    let number = if it.numbering != none {
      counter(heading).display(it.numbering)
      h(7pt, weak: true)
    }

    text(block([#number #it.body]))
    v(0.5em)
  }

  body
}