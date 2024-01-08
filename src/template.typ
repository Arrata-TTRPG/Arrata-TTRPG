#set heading(numbering: "1.1.1")

// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let project(title: "", authors: (), logo: none, version: "", body) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  set page(
    paper: "a6",
    width: 115mm,
    fill: black,
    number-align: center,
  )

  // Save heading and body font families in variables.
  let body-font = "Fira Sans"
  let heading-font = "Fira Mono"

  // Set body font family.
  set text(
    size: 10pt,
    font: "Fira Sans",
    fill: white,

  )

  // Set paragraph spacing.
  show par: set block(above: 1.2em, below: 1.2em)

  show heading: set text(font: heading-font)
  set heading(numbering: "1.1.1.")

  // Set run-in subheadings, starting at level 3.
  show heading: it => {
    if it.level > 3 {
      parbreak()
      text(10pt, style: "italic", weight: "regular", it.body + ".")
    } else {
      it
    }
  }

  set par(
    justify: true,
    leading: 0.52em,
  )

  // Title page.
  // The page can contain a logo if you pass one with `logo: "logo.png"`.
  v(0.6fr)
  if logo != none {
    align(center, image(logo, width: 90%))
  }
  v(9.6fr)

  text(font: heading-font, 2em, weight: 700, title)

  // Author information.
  pad(
    top: 0.7em,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(center, strong(author))),
    ),
  )

  v(1.2fr)

  align(center, strong(version))

  align(center, strong(datetime.today().display()))

  v(2.4fr)
  pagebreak()


  // Table of contents.
  outline(depth: 3, indent: true)
  pagebreak()


  // Main body.
  set par(justify: true)

  show link: underline

  body
}